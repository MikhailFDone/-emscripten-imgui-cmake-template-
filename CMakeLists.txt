cmake_minimum_required(VERSION 3.16)

# set the project name and version
project(EmscriptenDearImGui)

# specify the C++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(cmake/DearImGui.cmake)

set(CMAKE_EXECUTABLE_SUFFIX ".html")

# add the executable
add_executable(EmscriptenDearImGui main.cpp imgui/examples/libs/emscripten/emscripten_mainloop_stub.h)
target_include_directories(EmscriptenDearImGui PRIVATE "imgui/examples/libs/emscripten/")
target_link_libraries(EmscriptenDearImGui imgui)

if (EMSCRIPTEN)
    target_compile_options(EmscriptenDearImGui PUBLIC "-sUSE_SDL=2;-sUSE_FREETYPE=1;-sUSE_SDL_IMAGE=2")
    target_link_options(EmscriptenDearImGui PUBLIC "-sUSE_SDL=2;-sUSE_FREETYPE=1;-sUSE_SDL_IMAGE=2")
    add_link_options(-sASSERTIONS)
endif()
