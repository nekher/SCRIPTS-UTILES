@echo off
title PONER Y SACAR PROXY
:menu
cls
echo Elija una opcion:
echo 1) PONER PROXY
echo 2) SACAR PROXY
echo 3) Salir

set /p opcion=
if "%opcion%"=="1" goto PROXYON
if "%opcion%"=="2" goto PROXYOFF
if "%opcion%"=="3" exit


:PROXYON
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d "NOMBREPROXY:PUERTOPROXY" /f >nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "<local>" /f >nul
echo Se ha puesto el proxy correctamente.
pause
goto menu

:PROXYOFF
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f >nul 
echo Se ha sacado el proxy correctamente.
pause 
goto menu

