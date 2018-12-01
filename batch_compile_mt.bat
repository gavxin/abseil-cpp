@ECHO OFF
SET VCVARSALL="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat"

@ECHO Add following text to CMakeLists.txt
@ECHO -----------------------------
@ECHO  foreach(flag_var
@ECHO        CMAKE_CXX_FLAGS CMAKE_CXX_FLAGS_DEBUG CMAKE_CXX_FLAGS_RELEASE
@ECHO        CMAKE_CXX_FLAGS_MINSIZEREL CMAKE_CXX_FLAGS_RELWITHDEBINFO)
@ECHO   if(${flag_var} MATCHES "/MD")
@ECHO      string(REGEX REPLACE "/MD" "/MT" ${flag_var} "${${flag_var}}")
@ECHO   endif(${flag_var} MATCHES "/MD")
@ECHO  endforeach(flag_var)
@ECHO -----------------------------
@ECHO Pause for editing...
PAUSE
@ECHO Please comfirm CMakeLists.txt correctly edited.
PAUSE

cmd /c compile_one.bat x86 d mt
cmd /c compile_one.bat x86 r mt
cmd /c compile_one.bat x64 d mt
cmd /c compile_one.bat x64 r mt