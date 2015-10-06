
@set /p ad=Please Input File Location
@set /p des=Please Input Destination File(ex: xxx\xxx\xxx.iso)



"C:\Program Files (x86)\Windows Embedded Standard 7\Tools\x86\oscdimg" -n -h -m -b"C:\Program Files (x86)\Windows Embedded Standard 7\Tools\PETools\x86\boot\etfsboot.com" %ad% %des%
pause