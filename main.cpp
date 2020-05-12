
#include "parser.h"
#include "server.h"

void readConfig(Config &config, std::string& path);

int main(int argc, const char * argv[]) {
    Config config;
    Server server;
    std::cout << "Starting HTTP Server on port: " +  std::to_string(config.port)+ " !\n";
    std::string path = "/etc/httpd.conf";
    readConfig(config, path);

    server.start(config);

    return 0;
}

void readConfig(Config &config, std::string& path) {
    std::ifstream f(path);
    if (!f.is_open()) {
        throw std::exception();
    }

    std::string line;
    std::cout << "Config:" << std::endl;
    while(std::getline(f, line)) {
        std::cout << line << std::endl;

        std::istringstream lineStream{line};
        std::string argName, argVal;
        lineStream >> argName >> argVal;

        std::cout << argVal << std::endl;
        if (argName == "document_root") {
            config.documentRootPath = argVal;
        } else if (argName == "cpu_limit") {
            config.workersNumber = std::atoi(argVal.c_str());
        }
    }
}