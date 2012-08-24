@echo off
mkdir Scans\Panda
Data\bin\7z.exe x -o"Scans\Panda" -y "Downloads\ScanPanda.zip"
del Downloads\ScanPanda.zip