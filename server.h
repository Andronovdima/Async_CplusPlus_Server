//
// Created by Андронов Дмитрий on 16.04.2020.
//

#ifndef SERV_SERVER_H
#define SERV_SERVER_H

#include <unistd.h> // close socket
#include <memory>
#include <netdb.h>
#include "instance.h"

struct Config {
    const int port = 80;
    const int queueSocket = 30;
    int workersNumber = 2;
    std::string documentRootPath = "/usr/share/nginx/html";
    const int buffSize = 1024;
    int threadLimit = 3;
};


class Server {

public:
    Server() : mainSocket(-1) {}

    ~Server() {
        if (mainSocket > 0)
            close(mainSocket);
    }

    void start(Config& config);

private:
    int mainSocket;

    void createServerSocket(uint32_t port, uint32_t queueSize);
};

#endif //SERV_SERVER_H
