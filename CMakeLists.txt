cmake_minimum_required(VERSION 3.10)
project(CAN_sandbox)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp src/jetson_can_interface.cpp)
add_executable(CAN_sandbox ${SOURCE_FILES})
add_subdirectory (src)