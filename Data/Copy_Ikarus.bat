@echo off
mkdir Scans\Ikarus
Data\bin\7z.exe x -o"Scans\Ikarus" -y "Downloads\ScanIkarus.exe"
del Downloads\ScanIkarus.exe