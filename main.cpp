
#include "parser.h"
#include "server.h"

int main(int argc, const char * argv[]) {
    Config config;
    Server server;
    std::cout << "Starting HTTP Server on port: " +  std::to_string(config.port)+ " !\n";

    server.start(config);

    return 0;
}