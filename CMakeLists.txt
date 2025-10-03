cmake_minimum_required(VERSION 3.16)
project(calc LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(calc STATIC calculator.cpp)

target_include_directories(calc PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_executable(start main.cpp)

target_link_libraries(start PRIVATE calc)
