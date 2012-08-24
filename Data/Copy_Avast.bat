@echo off
echo.
echo -------------------------------------------
echo    SAI4K (Silent Avast Install for KIMS)
echo    by DSR! - 2009
echo -------------------------------------------
echo.
echo.

echo [*] Installing Avast in system
"Downloads\ScanAvast.exe" /VERYSILENT /NORESTART /SP-
echo.

echo [*] Copy Avast to KIMS
rd /s /q "%ProgramFiles%\Alwil Software\Avast4\Setup"
del "%ProgramFiles%\Alwil Software\Avast4\DATA\Skin\SZC-KDE.asws"
del "%ProgramFiles%\Alwil Software\Avast4\AhAScr.dll"
del "%ProgramFiles%\Alwil Software\Avast4\AhJsctNs.dll"
del "%ProgramFiles%\Alwil Software\Avast4\AhR*.dll"
del "%ProgramFiles%\Alwil Software\Avast4\ashMaiSv.exe"
del "%ProgramFiles%\Alwil Software\Avast4\ashOutXt.dll"
del "%ProgramFiles%\Alwil Software\Avast4\ashPopWz.exe"
del "%ProgramFiles%\Alwil Software\Avast4\ashWebSv.exe"
del "%ProgramFiles%\Alwil Software\Avast4\ashWsFtr.dll"
del "%ProgramFiles%\Alwil Software\Avast4\AVASTSS.scr"
mkdir "%cd%\Scans\Avast"
xcopy "%ProgramFiles%\Alwil Software\Avast4" "%cd%\Scans\Avast" /S > nul
echo.

echo [*] Unistall Avast in system
set ruta=%cd%\Scans\Avast
REG EXPORT "HKLM\SOFTWARE\ALWIL Software\Avast\4.0" "%ruta%\DSR!_fake_install.reg"
"%cd%\Data\bin\aswclear.exe" /prod "av_pro" /verysilent
echo.

echo [*] Config and Cleanup Avast in KIMS
regedit /s "%cd%\Scans\Avast\DSR!_fake_install.reg"
REG ADD "HKLM\Software\ALWIL Software\Avast\4.0" /v Avast4DataFolder /t REG_SZ /d "%ruta%\DATA" /f
REG ADD "HKLM\Software\ALWIL Software\Avast\4.0" /v Avast4SkinFolder /t REG_SZ /d "%ruta%\DATA\Skin" /f
REG ADD "HKLM\Software\ALWIL Software\Avast\4.0" /v Avast4ProgramFolder /t REG_SZ /d "%ruta%" /f
del "%cd%\Downloads\ScanAvast.exe"
echo.

echo [*] Done
"%cd%\Data\bin\sleep.exe" 3 > nul