@echo off
mkdir Scans\Asquared
Data\bin\7z.exe x -o"Scans\Asquared" -y "Downloads\ScanAsquared.zip"
del Downloads\ScanAsquared.zip