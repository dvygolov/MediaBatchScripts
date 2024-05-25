@echo off
SETLOCAL EnableDelayedExpansion

echo                   			PNG,JPG to WebP Converter
echo    _            __     __  _ _             __          __  _     
echo   ^| ^|           \ \   / / ^| ^| ^|            \ \        / / ^| ^|    
echo   ^| ^|__  _   _   \ \_/ /__^| ^| ^| _____      _\ \  /\  / /__^| ^|__  
echo   ^| '_ \^| ^| ^| ^|   \   / _ \ ^| ^|/ _ \ \ /\ / /\ \/  \/ / _ \ '_ \ 
echo   ^| ^|_) ^| ^|_^| ^|    ^| ^|  __/ ^| ^| (_) \ V  V /  \  /\  /  __/ ^|_) ^|
echo   ^|_.__/ \__, ^|    ^|_^|\___^|_^|_^|\___/ \_/\_/    \/  \/ \___^|_.__/ 
echo           __/ ^|                                                  
echo          ^|___/                  https://yellowweb.top            
echo. 
echo If you like this script, please, donate!
echo Bitcoin: bc1qqv99jasckntqnk0pkjnrjtpwu0yurm0qd0gnqv
echo Ethereum: 0xBC118D3FDE78eE393A154C29A4545c575506ad6B
echo USDT TRC20: TKeNEVndhPSKXuYmpEwF4fVtWUvfCnWmra
echo. 
IF "%1"=="" (
	echo "Converting to WebP whole directory..."
	FOR /F "tokens=*" %%G IN ('dir /b *.png,*.jpg,*.jpeg') DO (
		nconvert -out webp -o "%%~nG_ywb.webp" -q 95 -rmeta -rexifthumb "%%G"
	)
	echo "Dir to WebP conversion complete!"
) ELSE (
	echo "Converting single file..."
	nconvert -out webp -o "%~n1_ywb.png -q 95 -rmeta -rexifthumb "%1"
	echo "Conversion to WebP complete!"
)
