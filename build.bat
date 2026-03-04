@echo off
cd /d "%~dp0src"
call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
if not exist "..\build" mkdir "..\build"
cl.exe /std:c++17 /EHsc /MD /I..\deps\raylib\include /I..\deps\raylib-cpp\include /Fd..\build\ /Fo..\build\ /Fe..\build\Roguelike.exe main.cpp /link /NODEFAULTLIB:LIBCMT /LIBPATH:..\deps\raylib\lib raylib.lib shell32.lib winmm.lib user32.lib gdi32.lib
echo.
if exist "..\build\Roguelike.exe" (
  echo Build successful! Executable: ..\build\Roguelike.exe
) else (
  echo Build failed.
)
cd ..
