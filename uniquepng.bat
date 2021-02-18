@echo off
SETLOCAL EnableDelayedExpansion

IF "%1"=="" (
	echo "Uniqueize whole PNG directory..."
	FOR /F "tokens=*" %%G IN ('dir /b *.png') DO (
		nconvert -out png -o "%%~nG_ywb.png" -q 95 -rmeta -rexifthumb -noise uniform 0.!random! "%%G"
	)
	echo "Png dir uniqueization complete!"
) ELSE (
	echo "Uniqueize single PNG file..."
	nconvert -out png -o "%~n1_ywb.png -q 95 -rmeta -rexifthumb -noise uniform 0.1 "%1"
	echo "Uniqueization complete!"
)