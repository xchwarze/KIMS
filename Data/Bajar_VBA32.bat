@echo off
echo.
echo -------------------------------------------
echo          VBA Command line Install
echo              script by DSR!
echo  (for VirusBlokAda (Console scanner) v3.x)
echo -------------------------------------------
echo.
echo.

set KIMS=%cd%

mkdir "%KIMS%\Scans\VBA32"
"%KIMS%\Data\bin\7z.exe" x -o"%KIMS%\Scans\VBA32" -y "%KIMS%\Downloads\vba32w-latest.zip"

del "%KIMS%\Downloads\vba32w-latest.zip"
exit