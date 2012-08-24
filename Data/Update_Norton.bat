@echo off
Data\bin\7z.exe x -o"Downloads\" -y "Downloads\updatenorton.exe"
del "Downloads\wrap32.exe"
Data\bin\7z.exe x -o"Scans\Norton" -y "Downloads\UPDATER.EXE"
del "Downloads\UPDATER.EXE"