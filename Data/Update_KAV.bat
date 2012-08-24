@echo off
cd Scans
cd KAV
..\..\Data\bin\wget.exe -N --tries=2 --timeout=15 --passive-ftp ftp://updates2.kaspersky-labs.com/updates_ext/avp.*
..\..\Data\bin\wget.exe -N --tries=2 --timeout=15 --passive-ftp ftp://updates2.kaspersky-labs.com/updates_ext/*.avc