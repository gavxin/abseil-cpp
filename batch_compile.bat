@ECHO OFF
SET VCVARSALL="C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat"

cmd /c compile_one.bat x86 d md
cmd /c compile_one.bat x86 r md
cmd /c compile_one.bat x64 d md
cmd /c compile_one.bat x64 r md