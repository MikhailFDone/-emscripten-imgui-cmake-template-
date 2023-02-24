cmake_minimum_required(VERSION 3.16)

# set the project name and version
project(EmscriptenDearImGui)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(cmake/DearImGui.cmake)

set(CMAKE_EXECUTABLE_SUFFIX ".html")

# add the executable
add_executable(EmscriptenDearImGui imgui_demo.cpp)
