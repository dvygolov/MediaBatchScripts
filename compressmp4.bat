@echo off
SETLOCAL EnableDelayedExpansion
IF "%1"=="" (
	FOR /F "tokens=*" %%G IN ('dir /b /S *.mp4') DO (
		echo "%%G"
		ffmpeg -i "%%G" -vcodec libx264 -crf 20 "%%G_new.mp4"
		del "%%G"
		ren "%%G_new.mp4" "%%~nxG"
	)
) ELSE (
	ffmpeg -i "%1" -vcodec libx264 -crf 20 "%~n1_new.mp4"
	del "%1"
	ren "%~n1_new.mp4" "%~nx1"
)
