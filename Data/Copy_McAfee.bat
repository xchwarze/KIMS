@echo off
mkdir Scans\McAfee
Data\bin\7z.exe x -o"Scans\McAfee" -y "Downloads\ScanMcAfee.zip"
del "Downloads\ScanMcAfee.zip"
