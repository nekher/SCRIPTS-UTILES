@echo off
REG delete HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2} /f
pause


taskkill /f /IM explorer.exe

start explorer.exe