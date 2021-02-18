@echo off
SETLOCAL EnableDelayedExpansion
IF "%1"=="" (
	echo "Compressing whole PNG directory..."
	FOR /F "tokens=*" %%G IN ('dir /b /S *.png') DO (
		echo "%%G"
		pngquant --force --speed 1 --output "%%G" --strip "%%G"
	)
	echo "Dir compression complete!"
) ELSE (
	echo "Compressing single PNG file..."
	pngquant --force --speed 1 --output "%1" --strip "%1"
	echo "Single compression complete!"
)