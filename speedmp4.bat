@echo off
SETLOCAL EnableDelayedExpansion
set /a number=!random! %% 9-5
IF "%1"=="" (
	FOR /F "tokens=*" %%G IN ('dir /b *.mp4') DO (
		ffmpeg -i "%%G" -filter:v "setpts=0.!number!*PTS" "%%~nG_ywb.mp4"
	)
) ELSE (
		ffmpeg -i "%1" -filter:v "setpts=0.!number!*PTS" "%~n1_ywb.mp4"
)