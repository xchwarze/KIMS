@echo off
rem script pensado para v0.97.3
cd "Scans\ClamWin"
rem  --log="%CD%\updateLog.txt" para loggear el proceso
bin\freshclam.exe --datadir="%CD%\db" --config-file="%CD%\db\updater.conf"