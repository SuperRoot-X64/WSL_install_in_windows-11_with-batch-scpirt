@echo off
title WSL Installer - Super-Linux

echo =====================================
echo   WSL Installer for Windows 11
echo   Created by Super-Linux
echo   Script adapted with help from ChatGPT
echo =====================================
echo.

echo Enabling Windows Subsystem for Linux...
dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

echo Enabling Virtual Machine Platform...
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

echo.
echo System will reboot in 5 seconds...
timeout /t 5 /nobreak >nul

shutdown /r /t 0
