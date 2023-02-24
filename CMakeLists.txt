cmake_minimum_required(VERSION 3.16)

include(cmake/DearImGui.cmake)

# set the project name and version
project(EmscriptenDearImGui)

# add the executable
add_executable(EmscriptenDearImGui imgui_demo.cpp)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)