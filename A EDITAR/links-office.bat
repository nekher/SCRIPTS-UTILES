@echo OFF

reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT

if %OS%==64BIT (
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\9.0\Common\Internet" /t REG_DWORD /v ForceShellExecute /d 1 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Office\9.0\Common\Internet" /t REG_DWORD /v ForceShellExecute /d 1 /f
)
if %OS%==32BIT (
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Office\9.0\Common\Internet" /t REG_DWORD /v ForceShellExecute /d 1 /f
)