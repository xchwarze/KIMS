@echo off
cd Scans
mkdir Solo
cd Solo
..\..\Data\bin\wget.exe -N ftp://srnmicro.com/*.*
..\..\Data\bin\wget.exe -N ftp://65.98.33.169/*.*