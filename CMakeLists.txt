cmake_minimum_required(VERSION 3.10)
project(server)

SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -pthread")
set(CMAKE_CXX_STANDARD 17)

add_executable(server main.cpp parser.h parser.cpp server.h server.cpp instance.h instance.cpp)
target_link_libraries(${PROJECT_NAME} stdc++fs)