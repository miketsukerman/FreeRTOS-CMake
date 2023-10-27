cmake_minimum_required(VERSION 3.20)

project(freertos-cmake)

set(FREERTOS_PORT "GCC_ARM_CM3")

add_subdirectory(3rdparty)
add_subdirectory(startup)
add_subdirectory(application)
