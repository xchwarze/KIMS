copy ..\ScanQuickHeal\EmergencyFiles\*.* ..\ScanQuickHeal\ /Y
reg add "HKLM\SYSTEM\CurrentControlSet\Services\NT Online Protection" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ScanWscS" /v Start /t REG_DWORD /d 3 /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "Email Protection" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v Messenger /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "On-Line Protection" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "Startup Scan" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "Update Scheduler" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /v "Startup Scan" /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce /v QHDelTmp2221 /f