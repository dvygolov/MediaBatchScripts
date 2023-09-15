@echo off
SETLOCAL EnableDelayedExpansion

IF "%1"=="" (
	echo "Compressing whole JPG directory..."
	FOR /F "tokens=*" %%G IN ('dir /b /S *.jpg,*.jpeg') DO (
			echo "%%G"
			cjpeg -quality 70 -outfile "%%G_new" "%%G"
			del "%%G"
			ren "%%G_new" "%%~nxG"
	)
	echo "Dir compression complete!"
) ELSE (
	echo "Compressing single JPG file..."
	cjpeg -quality 70 -outfile "%1_new" "%1"
	del "%1"
	ren "%1_new" "%~nx1"
	echo "Single compression complete!"
)