@echo off
SETLOCAL EnableDelayedExpansion
IF "%1"=="" (
	FOR /F "tokens=*" %%G IN ('dir /b *.mp4') DO (
		set /a number=!random! %% 7-1
		ffmpeg -i "%%G" -vf noise=alls=!number!:allf=t "%%~nG_!RANDOM!.mp4"
	)
) ELSE (
	ffmpeg -i "%1" -vf noise=alls=1:allf=t "%~n1_ywb.mp4"
)
