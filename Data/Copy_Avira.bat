@echo off
echo.
echo -------------------------------------------
echo         Avira Sysclean Installer
echo              script by DSR!
echo       (for scancl-win32-en v1.9x)
echo -------------------------------------------
echo.
echo.

echo [*] Extract and install
mkdir Scans\Avira
Data\bin\7z.exe e -o"Scans\Avira\" -y "Downloads\ScanAvira.zip"