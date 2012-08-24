@echo off
"Downloads\ScanF-Prot.exe"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FPAV_RTP" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\FPAVServer" /v Start /t REG_DWORD /d 3 /f
reg delete "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "F-PROT Antivirus Tray application" /f