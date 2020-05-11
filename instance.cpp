//
// Created by Андронов Дмитрий on 16.04.2020.
//

#include "instance.h"

Worker::Worker(std::string &rootPath, const int buffSiz) : docRootPath(rootPath), buffSize(buffSiz) {}

void Worker::run(int socket) {
    signal(SIGPIPE, SIG_IGN);
    int threadsNum = 20;
    std::vector<std::thread> threads;
    for (int i = 0; i < threadsNum; i++) {
        std::thread thread([this](int l) {
            this->runThread(l);
        }, socket);
        threads.push_back(std::move(thread));
    }

    for (auto &thr: threads) {
        if (thr.joinable()) {
            thr.join();
        }
    }
}

void Worker::runThread(int socket) {
    HTTPParser parser;
    std::cout << "RUN THREAD!\n";

    while(true) {
        struct sockaddr_in client;
        socklen_t cliLen = sizeof(client);
        int clientSocket = ::accept(socket, (struct sockaddr*)&client, &cliLen);


        if (clientSocket < 0) {
            std::cerr << "Accept error" << std::endl;
            exit(3);
        }

        std::cout << "ACCEPT +client: " << clientSocket << ", from: "
                  << client.sin_addr.s_addr << std::endl;

        std::string req = getRequest(clientSocket);

        try {
            auto httpRequest = parser.parseHeader(req);
            executeRequest(httpRequest, clientSocket);
        } catch (std::exception &e) {
            std::cout << e.what() << std::endl;
        }

        close(clientSocket);
    }

    return;
}

std::string Worker::getRequest(int clientSocket) {
    char buff[buffSize];
    std::string request;

    ssize_t n = ::recv(clientSocket, buff, sizeof(buff), 0);

    if (n > 0) {
        request.append(buff, n);
    } else if (n == -1 ){
        throw std::runtime_error("recv socket error");
    }

    return request;
}


void Worker::executeRequest(HttpRequest req, int clientSocket) {
    std::cout << "url: " << req.mainInfo.uri << std::endl
              << "method: " << req.mainInfo.method << std::endl
              << "http version: " << req.mainInfo.httpVersion << std::endl;

    int statusCode = 0;
    if(req.mainInfo.method == "GET" || req.mainInfo.method == "HEAD") {
        statusCode = 200;

        bool isDir;
        try {
            isDir = makePath(req.mainInfo.uri);
            if (!fs::exists(req.mainInfo.uri)) {
                if (isDir) {
                    statusCode = 403;
                } else {
                    statusCode = 404;
                }
            }
        } catch (std::exception e) {
            statusCode = 403;
            std::cerr << "/.. exception" << std::endl;
        }

        writeStartLine(req.mainInfo.httpVersion, statusCode, clientSocket);

        uintmax_t size = 0;
        if (statusCode == 200) {
            size = fs::file_size(req.mainInfo.uri);
        }

        std::cout << "status: " << statusCode << "; size: " << size << std::endl;
        if (statusCode == 200) {
            writeHeaders(true, req.mainInfo.uri, size, clientSocket);
            if (req.mainInfo.method == "GET") {
                writeFile(req.mainInfo.uri, clientSocket);
            }
        } else {
            writeHeaders(false, req.mainInfo.uri, 0, clientSocket);
        }
    } else {
        statusCode = 405;
        writeStartLine(req.mainInfo.httpVersion, statusCode, clientSocket);
        writeHeaders(false, req.mainInfo.uri, 0, clientSocket);
    }
}


bool Worker::makePath(std::string &path) {
    if (path.find("/..") != std::string::npos) {
        throw std::runtime_error("Invalid path");
    }

    // cut arguments
    auto argumentsPos = path.find('?');
    if (argumentsPos != std::string::npos) {
        path = path.substr(0, argumentsPos);
    }

    HTTPParser parser;
    auto decodedPath = parser.decodeUri(path);

    bool subdir = false;
    if (decodedPath[decodedPath.length() - 1] != '/') {
        path =  docRootPath + decodedPath;
    } else {
        subdir = true;
        path = docRootPath + decodedPath + "index.html";
    }

    std::cout << "path: " << path << std::endl;

    return subdir;
}

void Worker::writeStartLine(std::string &version, int status, int clientSocket) {
    std::string start = version + " " + std::to_string(status) + " " + statuses.at(status) + "\r\n";
    ::send(clientSocket, start.c_str(), start.length(), 0);
}


void Worker::writeHeaders(bool isOK, std::string &uri, uintmax_t length, int clienSocket) {
    std::string headers = "Server: C++ Server\r\n"
                          "Connection: close\r\n"
                          "Date: " + GetFormatDate() + "\r\n";

    if (isOK) {
        std::string contentType;
        try {
            auto ext = getExtension(uri);
            contentType = contentTypes.at(ext);
        } catch (std::exception &e) {
            contentType = "text/plain";
        }

        headers += "Content-Type: " + contentType + "\r\n"
                   + "Content-Length: " + std::to_string(length) + "\r\n\r\n";
    }

    ::send(clienSocket, headers.c_str(), headers.length(), 0);
}

void Worker::writeFile(std::string &uri, int clientSocket) {
    auto size = fs::file_size(uri);
    auto fd = open(uri.c_str(), O_RDONLY);
    // TODO add check if file opened

    while (size != 0) {
        auto written = sendfile(clientSocket, fd, nullptr, size);
        if (written != -1) {
            size -= written;
        } else {
            if (errno == EWOULDBLOCK || errno == EAGAIN) {
                // TODO add something useful here mb
            }
            close(fd);
            return;
        }
    }

    close(fd);
}

//void Worker::setNonBlocked(int socket ,bool opt) throw (std::exception) {
//    int flags = fcntl(socket, F_GETFL, 0);
//    int new_flags = (opt)? (flags | O_NONBLOCK) : (flags & ~O_NONBLOCK);
//    if (fcntl(socket, F_SETFL, new_flags) == -1)
//        throw std::runtime_error("nonblocked: " + std::string(strerror(errno)));
//}
