@echo off
FOR %%G IN (2022, 2023, 2024) DO (call :subroutine "%%G")
GOTO :eof

:subroutine
set builddir=maya%1
if not exist %builddir% goto BUILDENV
del %builddir% /S /Q
:BUILDENV
mkdir %builddir%
cd %builddir%
cmake -A x64 -T v141 -DMAYA_VERSION=%1 ../
cmake --build . --target install --config Release
cd ..
goto :eof
