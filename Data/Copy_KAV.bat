@echo off
mkdir Scans\KAV
Data\bin\7z.exe x -o"Scans\KAV" -y "Downloads\ScanKAV.rar"
del "Downloads\ScanKAV.rar"