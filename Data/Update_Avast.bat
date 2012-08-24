cd Scans
cd Avast
regedit /s regori.reg
set ruta=%cd%
REG ADD "HKLM\Software\ALWIL Software\Avast\4.0" /v Avast4DataFolder /t REG_SZ /d %ruta% /f
REG ADD "HKLM\Software\ALWIL Software\Avast\4.0" /v Avast4SkinFolder /t REG_SZ /d %ruta% /f
REG ADD "HKLM\Software\ALWIL Software\Avast\4.0" /v Avast4ProgramFolder /t REG_SZ /d %ruta% /f
cls
@echo "Con amor o con odio pero siempre con violencia"
@echo                                         DSR!
..\Scans\Avast\ashUpd.exe vps
..\Scans\Avast\ashUpd.exe program