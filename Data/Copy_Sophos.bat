@echo off
mkdir Scans\Sophos
Data\bin\7z.exe x -o"Scans\Sophos" -y "Downloads\ScanSophos.exe"
del Downloads\ScanSophos.exe