@echo off
mkdir Scans\QuickHeal
bin\7z.exe x -o"Downloads\" -y "Downloads\ScanQuick Heal.exe"
bin\7z.exe x -o"Scans\QuickHeal" -y "Downloads\ROOT.ARJ"
del "Scans\QuickHeal\*.exe"
del "Scans\QuickHeal\*.dll"
del "Scans\QuickHeal\*.sys"
bin\7z.exe x -o"Scans\QuickHeal" -y "Downloads\EMG.ARJ"
del "Downloads\*.ARJ"
del "Downloads\*.DLL"
del "Downloads\*.txt"
del "Downloads\*.dat"
pause