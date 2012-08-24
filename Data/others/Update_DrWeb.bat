@echo off
cd Scans
cd DrWeb
..\..\Data\wget.exe -N ftp://ftp.drweb.com/pub/drweb/bases/444/*.*
..\..\Data\7z.exe x -o"%cd%" -y "*.zip"