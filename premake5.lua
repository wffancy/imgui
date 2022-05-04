project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imgui.h",
        "imgui_internal.h",
        "imstb_rectpack.h",
        "imconfig.h",
        "imstb_textedit.h",
        "imgui_demo.cpp",
        "imgui_tables.cpp",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_widgets.cpp",
        "imstb_truetype.h"         
    }

    filter "system:macosx"
        staticruntime "On"
        cppdialect "C++17"