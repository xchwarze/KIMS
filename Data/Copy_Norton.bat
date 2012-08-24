@echo off
mkdir Scans\Norton
bin\7z.exe x -o"Scans\Norton" -y "Downloads\ScanNorton.exe"
del Downloads\ScanNorton.exe