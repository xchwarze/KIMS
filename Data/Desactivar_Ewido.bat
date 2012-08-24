reg add "HKLM\SYSTEM\CurrentControlSet\Services\ewido anti-spyware 4.0 guard" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SYSTEM\CurrentControlSet\Services\ewido anti-spyware 4.0 driver" /v Start /t REG_DWORD /d 3 /f
reg add "HKLM\SOFTWARE\ewido anti-spyware\config" /v 70D35153 /t REG_BINARY /d 4183070e291028f7 /f
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v !ewido /f