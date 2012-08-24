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
mkdir "%cd%\Scans\TrendMicro"
Data\bin\7z.exe e -o"%cd%\Scans\TrendMicro\" -y "%cd%\Downloads\ScanTrend Micro.zip"
cd "%cd%\Scans\TrendMicro"
echo.

echo [*] Execute fake run and wait 10 seconds
echo     DONT NOT TOUCH ANYTHING!!!
start /separate Data\bin\hidcon.exe "%cd%\Scans\TrendMicro\SysClean.com"
ping 127.0.0.1 > nul
ping 127.0.0.1 > nul
echo.

echo [*] Kill all and force install
TASKKILL /F /IM SysClean.com /IM sysclean.exe
copy "%cd%\Scans\TrendMicro\vscantm.bin" "%cd%\Scans\TrendMicro\vscantm.exe"
Data\bin\7z.exe x -o"%cd%\Scans\TrendMicro\" -y Data\Bajar_TrendMicro.DSR!
del "%cd%\Scans\TrendMicro\SysClean.com"
echo.

echo [*] Done
ping 127.0.0.1 > nul