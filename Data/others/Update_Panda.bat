@echo off
wget.exe -N -c --http-user=USERNAME --http-passwd=PASSWORD http://acs.pandasoftware.com/updates/pavsig/pav.phtml
7z.exe X pav.phtml -y
del /q pav.phtml