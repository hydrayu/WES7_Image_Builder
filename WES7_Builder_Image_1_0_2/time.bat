@FOR /F "tokens=1-4 delims=/ " %%a IN ("%date%") DO @SET _MyDate=%%a%%b%%c

@FOR /F "tokens=1-4 delims=:." %%a IN ("%time%") DO @SET _MyTime=%%a:%%b:%%c


@echo _%_MyDate%_%_MyTime%_
@pause