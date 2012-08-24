@echo off
Data\bin\7z.exe x -o"Scans\" -y "Downloads\ScanVirusBuster.zip"
Data\bin\sleep 2
rd /s /q "Scans\VirusBuster"
move "Scans\vbscan-1.4.5-4.6.9-winnt" "Scans\VirusBuster"
mkdir "Scans\VirusBuster\temp"
del "Downloads\ScanVirusBuster.zip"