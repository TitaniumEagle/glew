project "glew"
	version = "1.10.0"

	language "C"
	
	files { "src/glew.c", "include/glew.h" }
	
	defines { "GLEW_STATIC=1", "_LIB=1" }
		
	kind ("StaticLib")
		
	configuration "windows"
		defines { "WIN32=1" }
		files { "include/GL/wglew.h" }
		
	configuration "linux"
		defines { "LINUX=1" }
		files { "include/GL/glxew.h" }
		
	configuration { }
	
	includedirs { "include/" }
	
	targetdir( LDIR_THIRDPARTY_LIB )
	location( LDIR_THIRDPARTY_BUILD )

	suffix_macro ( version, true )