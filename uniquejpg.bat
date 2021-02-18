@echo off
SETLOCAL EnableDelayedExpansion

IF "%1"=="" (
	echo "Uniqueize whole JPG directory..."
	FOR /F "tokens=*" %%G IN ('dir /b *.jpg,*.jpeg') DO (
		nconvert -out png -o "%%~nG_ywb.jpg" -q 95 -rmeta -rexifthumb -noise uniform 0.!random! "%%G"
	)
	echo "Jpg dir uniqueization complete!"
) ELSE (
	echo "Uniqueize single JPG file..."
	nconvert -out jpeg -o "%~n1_ywb.jpg -q 95 -rmeta -rexifthumb -noise uniform 0.1 "%1"
	echo "Uniqueization complete!"
)