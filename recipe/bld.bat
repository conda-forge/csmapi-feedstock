mkdir build
cd build
cmake -G "Visual Studio 17 2022" ^
    -A x64 ^
    -D CMAKE_CXX_FLAGS="/utf-8" ^
    -D CMAKE_C_FLAGS="/utf-8" ^
    -D CMAKE_BUILD_TYPE=Release ^
    -D CMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -D CMAKE_PREFIX_PATH=%PREFIX% ^
     %SRC_DIR%
if errorlevel 1 exit 1

cmake --build . --target ALL_BUILD --config Release
if errorlevel 1 exit 1

