net stop "AVG7 Alert Manager Server"
net stop "AVG7 Update Service"
net stop "AVG8 WatchDog"
reg add HKLM\SYSTEM\CurrentControlSet\Services\Avg7Alrt /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Avg7Core /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\Avg7UpdSvc /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\avg8wd /v Start /t REG_DWORD /d 3 /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v AVG7_CC /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v AVG8_TRAY /f