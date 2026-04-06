@echo off
color 02
title WSL Kernel Installer - Super-Linux

echo =====================================
echo   WSL Kernel Installer
echo   Created by Super-Linux
echo   Script adapted with help from ChatGPT
echo =====================================
echo.

echo Downloading WSL Kernel Update...

powershell -Command "Invoke-WebRequest -Uri https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi -OutFile wsl_update_x64.msi"

echo.
echo Installing WSL Kernel...

msiexec /i wsl_update_x64.msi /quiet /norestart

echo.
echo Opening Microsoft Store for Ubuntu install...

start ms-windows-store://pdp/?productid=9PN20MSR04DW

echo.
echo After installing Ubuntu, launch it and create your username when prompted.

echo.
echo Done! System will pause for 5 seconds...
timeout /t 5 /nobreak >nul

echo.
echo Installation complete!
pause
