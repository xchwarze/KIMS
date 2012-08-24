@echo off
echo Desempacando...!
Data\bin\7z.exe x -o"Downloads\files" -y "Downloads\ScanBitDefender.exe"
cd Downloads
..\Data\bin\msi2xml.exe -c files files\bdfree.msi
echo Copiando Engine...!
mkdir ..\Scans\BD
copy files\avxdisk.dll ..\Scans\BD
copy files\avxs.dll ..\Scans\BD
copy files\avxt.dll ..\Scans\BD
copy files\bdc.exe ..\Scans\BD
copy files\bdc.ini ..\Scans\BD
copy files\bdcore.dll ..\Scans\BD
copy files\bdss.exe ..\Scans\BD
copy files\bdupd.dll ..\Scans\BD
copy files\libfn.dll ..\Scans\BD
copy files\plugins.htm ..\Scans\BD
echo CON AMOR O CON ODIO PERO SIEMPRE CON VIOLENCIA
echo ------------------------------------------DSR!
mkdir ..\Scans\BD\Plugins
copy files\emalware.* ..\Scans\BD\Plugins
copy files\*.cvd ..\Scans\BD\Plugins
copy files\*.ivd ..\Scans\BD\Plugins
copy files\*.rv0 ..\Scans\BD\Plugins
copy files\*.rvd ..\Scans\BD\Plugins
copy files\*.xmd ..\Scans\BD\Plugins
copy files\update.txt ..\Scans\BD\Plugins
echo Clean all...!
del *.xsl
del *.xml
rd /s /q files