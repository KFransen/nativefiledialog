project "NativeFileDialog"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"src/include/*.h",
		"src/*.h",
		"src/**.c",
		"src/**.cpp"
	}
	
	includedirs
    {
		"src",
        "src/include"
    }
	
	filter "system:windows"
        systemversion "latest"
		defines 
		{ 
			"_CRT_SECURE_NO_WARNINGS"
		}

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"