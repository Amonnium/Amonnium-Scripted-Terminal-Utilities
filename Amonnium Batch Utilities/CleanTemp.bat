@echo off
echo Cleaning user temporary files...
del /q /f /s "%TEMP%\*" 2>nul
for /d %%i in ("%TEMP%\*") do rmdir /q /s "%%i" 2>nul

echo Cleaning system temporary files...
del /q /f /s "C:\Windows\Temp\*" 2>nul
for /d %%i in ("C:\Windows\Temp\*") do rmdir /q /s "%%i" 2>nul

echo Cleanup complete!
pause