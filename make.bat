@echo off
:: Set the build directory
set BUILD_DIR=Build

:: Default target
if "%1"=="default" (
    cmake --preset=default
) else if "%1"=="vcpkg" (
    cmake --preset=vcpkg
) else if "%1"=="clean" (
    echo Cleaning build directory...
    rd /s /q %BUILD_DIR%
) else (
    echo Invalid target. Use 'default', 'vcpkg', or 'clean'.
)