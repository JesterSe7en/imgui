project "imgui"
kind "StaticLib"
language "C++"
staticruntime "off"

targetdir("bin/" .. outputdir .. "/%{prj.name}")
objdir("bin-int/" .. outputdir .. "/%{prj.name}")

files
{
	"imconfig.h",
	"imgui.cpp",
	"imgui.h",
	"imgui_draw.cpp",
	"imgui_demo.cpp",
	"backends/imgui_impl_glfw.cpp",
	"backends/imgui_impl_glfw.cpp",
	"backends/imgui_impl_glfw.h",
	"backends/imgui_impl_opengl3.cpp",
	"backends/imgui_impl_opengl3.h",
	"backends/imgui_impl_opengl3_loader.h",
	"imgui_internal.h",
	"imgui_tables.cpp",
	"imgui_widgets.cpp",
	"imstb_rectpack.h",
	"imstb_textedit.h",
	"imstb_truetype.h",
}

includedirs
{
    ".",
    "../GLFW/include/", -- prob should use prj name or something here
}


filter "system:windows"
systemversion "latest"


filter "configurations:Debug"
runtime "Debug"
symbols "on"

filter "configurations:Release"
runtime "Release"
optimize "on"

