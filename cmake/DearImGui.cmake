add_library(imgui STATIC
    "./dependencies/imgui.h"
    "./dependencies/imgui_internal.h"
    "./dependencies/imstb_rectpack.h"
    "./dependencies/imstb_textedit.h"
    "./dependencies/imstb_truetype.h"

    "./dependencies/imgui.cpp"
    "./dependencies/imgui_draw.cpp"
    "./dependencies/imgui_tables.cpp"
    "./dependencies/imgui_widgets.cpp"

    "./dependencies/backends/imgui_impl_sdl2.h"
    "./dependencies/backends/imgui_impl_opengl3.h"

    "./dependencies/backends/imgui_impl_sdl2.cpp"
    "./dependencies/backends/imgui_impl_opengl3.cpp"
)
add_library(imgui::imgui ALIAS imgui)

target_compile_options(imgui PUBLIC "-sUSE_SDL=2;-sUSE_FREETYPE=1")

target_include_directories(imgui SYSTEM PUBLIC
    "./dependencies"
)

set_target_properties(imgui PROPERTIES FOLDER dependencies)

# Make all IMGUI files visible
file(GLOB_RECURSE imgui_sources CONFIGURE_DEPENDS ./dependencies/*.hpp ./dependencies/*.h ./dependencies/*.c ./dependencies/*.cpp)
source_group(TREE ./dependencies FILES ${imgui_sources})