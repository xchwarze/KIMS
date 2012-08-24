@echo off
rem script pensado para v0.97.3
Data\bin\innounp.exe -x -a -d"Scans\" "Downloads\ScanClamWin.exe"
rd /s /q "Scans\ClamWin"
move "Scans\{app}" "Scans\ClamWin"
move "Scans\{code_CommonProfileDir}\.clamwin\db" "Scans\ClamWin"
rd /s /q "Scans\{code_CommonProfileDir}"
rd /s /q "Scans\{tmp}"
del "Scans\install_script.iss"
cd "Scans\ClamWin\db"
echo DNSDatabaseInfo current.cvd.clamav.net>updater.conf
echo DatabaseMirror database.clamav.net>>updater.conf
echo DatabaseDirectory "%cd%">>updater.conf
echo MaxAttempts 5>>updater.conf