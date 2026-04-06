@echo off
color 02
title Super-Linux Linux Distro Selector

echo =====================================
echo   Super-Linux Distro Selector
echo =====================================
echo   Created by Super-Root-X64
echo   Script adapted with help from ChatGPT
echo =====================================
echo.

echo Here is a list of prominent Linux distributions:
echo.
echo 1. Ubuntu (20.04 / 22.04 / Preview)
echo 2. Debian GNU/Linux
echo 3. Kali Linux
echo 4. OpenSUSE (Leap / Tumbleweed)
echo 5. SUSE Linux Enterprise Server (SLES)
echo 6. Oracle Linux (8 / 9)
echo 7. AlmaLinux OS (8 / 9)
echo 8. Alpine WSL
echo 9. AOSC OS on WSL
echo 10. Pistachio Linux
echo 11. Open Microsoft Store (browse all)
echo 12. Exit
echo.

set /p choice=Enter your choice: 

if "%choice%"=="1" goto ubuntu
if "%choice%"=="2" goto debian
if "%choice%"=="3" goto kali
if "%choice%"=="4" goto opensuse
if "%choice%"=="5" goto sles
if "%choice%"=="6" goto oracle
if "%choice%"=="7" goto almalinux
if "%choice%"=="8" goto alpine
if "%choice%"=="9" goto aosc
if "%choice%"=="10" goto pistachio
if "%choice%"=="11" goto store
if "%choice%"=="12" exit

echo Invalid choice.
pause
exit

:ubuntu
wsl --install -d Ubuntu
pause
exit

:debian
wsl --install -d Debian
pause
exit

:kali
wsl --install -d kali-linux
pause
exit

:opensuse
wsl --install -d openSUSE-Leap
pause
exit

:sles
wsl --install -d SLES
pause
exit

:oracle
wsl --install -d OracleLinux_8_9
pause
exit

:almalinux
wsl --install -d AlmaLinux_8_9
pause
exit

:alpine
wsl --install -d Alpine
pause
exit

:aosc
wsl --install -d AOSC
pause
exit

:pistachio
wsl --install -d Pistachio
pause
exit

:store
echo Opening Microsoft Store...
start ms-windows-store://pdp/?productid=9PN20MSR04DW
pause
exit
