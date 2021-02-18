@echo off
SETLOCAL EnableDelayedExpansion

IF "%1"=="" (
	echo "Converting Gif2Mp4 - whole directory..."
	FOR /F "tokens=*" %%G IN ('dir /b *.gif') DO (
		ffmpeg -i "%%G" -b:v 0 -crf 25 -f mp4 -vcodec libx264 -pix_fmt yuv420p "%~nG.mp4"
	)
	echo "Conversion complete!"
) ELSE (
	echo "Converting Gif2Mp4 - single file..."
	ffmpeg -i "%1" -b:v 0 -crf 25 -f mp4 -vcodec libx264 -pix_fmt yuv420p "%~n1.mp4"
	echo "Conversion complete!"
)