@echo ===============================
@echo Version 1.0.2 
@echo Version Date: 2015_10_06_1023
@echo Auther : Hydra Yu
@echo ===============================
@echo.

@set /p ad=Please Input Source File Path (Ex : C:\xxx\xxx)
::@set /p des=Please Input Destination File Path (Ex : C:\xxx\xxx)

@FOR /F "tokens=1-4 delims=/ " %%a IN ("%date%") DO @SET _MyDate=%%a%%b%%c
@FOR /F "tokens=1-4 delims=:." %%a IN ("%time%") DO @SET _MyTime=%%a:%%b:%%c

@echo.
@echo Destination File Path : %ad%\Image_%_MyDate%_%_MyTime%.iso
@echo.
@echo Start Building...

@"C:\Program Files (x86)\Windows Embedded Standard 7\Tools\x86\oscdimg" -n -h -m -b"C:\Program Files (x86)\Windows Embedded Standard 7\Tools\PETools\x86\boot\etfsboot.com" %ad% %ad%\Image_%_MyDate%_%_MyTime%.iso

@echo Image Build Finish!!!
@pause