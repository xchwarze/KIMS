@echo off
Data\bin\7z.exe x -o"Scans\Sophos" -y "Downloads\UpdateSophos.zip"
del "Downloads\UpdateSophos.zip"