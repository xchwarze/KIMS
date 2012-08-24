net stop "Norman API-hooking helper"
net stop "Norman NJeeves"
net stop "Norman Virus Control Scheduler"
net stop "Norman ZANDA"
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Norman NJeeves" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\Norman ZANDA" /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\NipSvc /v Start /t REG_DWORD /d 3 /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "Norman ZANDA" /f