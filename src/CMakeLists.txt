cmake_minimum_required(VERSION 3.10)
project(Jetson_CAN_interface)

set(CMAKE_CXX_STANDARD 11)

add_library(Jetson_CAN_interface jetson_can_interface.cpp jetson_can_interface.h)