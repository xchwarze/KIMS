reg add HKLM\SYSTEM\CurrentControlSet\Services\CAISafe /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\VETEBOOT /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\VETEFILE /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\VETFDDNT /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\VET-FILT /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\VETMONNT /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\VETMSGNT /v Start /t REG_DWORD /d 3 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\VET-REC /v Start /t REG_DWORD /d 3 /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v CaAvTray /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v caissdt /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v CAVRID /f
copy_etrust.bat