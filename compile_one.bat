@ECHO ON
REM compile_one.bat (x86|x64) (d|r) (md|mt)
PUSHD %~dp0
mkdir build\%1%2_%3
mkdir lib\%1%2_%3
CALL %VCVARSALL% %1
PUSHD build\%1%2_%3
IF "%2" == "d" (
cmake -G Ninja -DCMAKE_BUILD_TYPE=Debug ..\..
) ELSE (
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release ..\..
) 
ninja
POPD
FOR /R build\%1%2_%3 %%f in (*.lib) DO copy %%f lib\%1%2_%3
POPD