@echo off
explorer "http://www.pandasecurity.com/activescan/index/"
echo.
echo  ***************************************************
echo   Instala el activeScan y cuando empiece a scannear
echo           cancelalo y cierra el navegador.
echo                                               DSR!
echo  ***************************************************
pause
copy "%ProgramFiles%\Panda Security\ActiveScan 2.0\pav.sig" "Scans\Panda" > "Reports\update_Panda_log1.txt"
del "..\Scans\Panda\*KRN_*" > nul
copy "%ProgramFiles%\Panda Security\ActiveScan 2.0\*KRN_*" "Scans\Panda" > "Reports\update_Panda_log2.txt"
del "..\Scans\Panda\*PSK_*" > nul
copy "%ProgramFiles%\Panda Security\ActiveScan 2.0\*PSK_*" "Scans\Panda" > "Reports\update_Panda_log3.txt"
copy /b "Reports\update_Panda_log1.txt" + "Reports\update_Panda_log2.txt" + "Reports\update_Panda_log3.txt" "Reports\update_Panda_log.txt"
del "Reports\update_Panda_log1.txt" > nul
del "Reports\update_Panda_log2.txt" > nul
del "Reports\update_Panda_log3.txt" > nul
cls
echo Done!
exit