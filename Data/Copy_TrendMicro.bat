@echo off
echo.
echo -------------------------------------------
echo       Trend Micro Sysclean Installer
echo              script by DSR!
echo           (for sysclean v1.2x)
echo -------------------------------------------
echo.
echo.

echo [*] Preparing files
mkdir Scans\TrendMicro
Data\bin\7z.exe e -o"Scans\TrendMicro\" -y "Downloads\ScanTrendMicro.zip"
echo.

echo [*] Execute fake run and wait 10 seconds
echo     DONT NOT TOUCH ANYTHING!!!
cd Scans\TrendMicro
start /separate ..\..\Data\bin\hidcon.exe "%cd%\SysClean.com"
ping 127.0.0.1 > nul
echo.

echo [*] Kill all and force install
TASKKILL /F /IM SysClean.com
TASKKILL /F /IM sysclean.exe
copy vscantm.bin vscantm.exe
..\..\Data\bin\7z.exe x -o"%cd%" -y ..\..\Data\Bajar_TrendMicro.DSR!
del SysClean.com
echo.

echo [*] Done