
@set /p ad=Please Input Source File Path (Ex : C:\xxx\xxx)

@FOR /F "tokens=1-4 delims=/ " %%a IN ("%date%") DO @SET _MyDate=%%a%%b%%c
@FOR /F "tokens=1-4 delims=:." %%a IN ("%time%") DO @SET _MyTime=%%a%%b%%c
@FOR /F "tokens=1-4 delims=:." %%a IN ("%time%") DO @SET _MyTime1=%%a%%b

@if NOT exist %ad%\Image_%_MyDate%_%_MyTime1% (
 md %ad%\Image_%_MyDate%_%_MyTime1%
 echo Make File... 
) ELSE (
	@echo File Exist...
)

@SET des=%ad%\Image_%_MyDate%_%_MyTime1%\

@echo.
@echo Source File Path : %ad%
@echo Destination File Path : %des%
 
@pause
