@echo off
cd Scans
cd DrWeb
..\..\Data\bin\wget.exe -N ftp://ftp.drweb.com/pub/drweb/bases/444/*.*
..\..\Data\bin\7z.exe x -o"%cd%" -y "*.zip"