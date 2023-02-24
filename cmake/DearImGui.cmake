add_library(imgui STATIC
    "./imgui/imgui.h"
    "./imgui/imgui_internal.h"
    "./imgui/imstb_rectpack.h"
    "./imgui/imstb_textedit.h"
    "./imgui/imstb_truetype.h"

    "./imgui/imgui.cpp"
    "./imgui/imgui_draw.cpp"
    "./imgui/imgui_tables.cpp"
    "./imgui/imgui_widgets.cpp"

    "./imgui/backends/imgui_impl_sdl2.h"
    "./imgui/backends/imgui_impl_opengl3.h"

    "./imgui/backends/imgui_impl_sdl2.cpp"
    "./imgui/backends/imgui_impl_opengl3.cpp"
)
add_library(imgui::imgui ALIAS imgui)

target_compile_options(imgui PUBLIC "-sUSE_SDL=2;-sUSE_FREETYPE=1")

target_include_directories(imgui SYSTEM PUBLIC
    "./imgui"
)

set_target_properties(imgui PROPERTIES FOLDER dependencies)

# Make all IMGUI files visible
file(GLOB_RECURSE imgui_sources CONFIGURE_DEPENDS ./imgui/*.hpp ./imgui/*.h ./imgui/*.c ./imgui/*.cpp)
source_group(TREE ./imgui FILES ${imgui_sources})