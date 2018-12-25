cmake_minimum_required(VERSION 3.13)
project(vstamp)

set(CMAKE_CXX_STANDARD 17)

set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

set(EXEC_DIR bin)

include_directories(include)

add_executable(vstamp main.cpp include/Socket.h lib/Socket.cc)

set( EXECUTABLE_OUTPUT_PATH ${EXEC_DIR} )
