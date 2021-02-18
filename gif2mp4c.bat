@echo off
SETLOCAL EnableDelayedExpansion

IF "%1"=="" (
	echo "Converting Gif2Mp4 with crop - whole directory..."
	FOR /F "tokens=*" %%G IN ('dir /b *.gif') DO (
		ffmpeg -i "%%G" -b:v 0 -crf 25 -f mp4 -vcodec libx264 -pix_fmt yuv420p -vf "crop=trunc(iw/2)*2:trunc(ih/2)*2" "%%~nG.mp4"
	)
	echo "Conversion complete!"
) ELSE (
	echo "Converting Gif2Mp4 with crop - single file..."
	ffmpeg -i "%1" -b:v 0 -crf 25 -f mp4 -vcodec libx264 -pix_fmt yuv420p -vf "crop=trunc(iw/2)*2:trunc(ih/2)*2" "%~n1_ywb.mp4"
	echo "Conversion complete!"
)