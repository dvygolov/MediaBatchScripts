@echo off
SETLOCAL EnableDelayedExpansion

IF "%1"=="" (
	echo "Converting Gif2WebM - whole directory..."
	FOR /F "tokens=*" %%G IN ('dir /b *.gif') DO (
		ffmpeg -i "%%G" -c vp9 -b:v 0 -crf 41 "%%~nG.webm"
	)
	echo "Conversion complete!"
) ELSE (
	echo "Converting Gif2WebM - single file..."
	ffmpeg -i "%1" -c vp9 -b:v 0 -crf 41 "%~n1.webm"
	echo "Conversion complete!"
)