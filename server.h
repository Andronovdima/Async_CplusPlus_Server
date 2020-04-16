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
    const int workersNumber = 4;
    std::string documentRootPath = "/opt/hifroserver/http-test-suite";
    const int buffSize = 1024;
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
