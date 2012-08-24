@echo off
cd Scans
cd McAfee
..\..\Data\bin\wget.exe -N ftp://ftp.mcafee.com/pub/antivirus/datfiles/4.x/dat-*.zip
..\..\Data\bin\7z.exe x -o"%cd%" -y "dat-*.zip"
del "dat-*.zip"