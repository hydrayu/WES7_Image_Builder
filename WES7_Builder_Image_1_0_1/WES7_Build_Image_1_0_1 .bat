@echo ===============================
@echo Version 1.0.1 
@echo Version Date: 2015_10_05_2130
@echo Auther : Hydra Yu
@echo ===============================
@echo.

@set /p ad=Please Input Source File Path (Ex : C:\xxx\xxx)
@set /p des=Please Input Destination File Path (Ex : C:\xxx\xxx)

@echo Start Building...

@"C:\Program Files (x86)\Windows Embedded Standard 7\Tools\x86\oscdimg" -n -h -m -b"C:\Program Files (x86)\Windows Embedded Standard 7\Tools\PETools\x86\boot\etfsboot.com" %ad% %des%.iso

@echo Image Build Finish!!!
@pause