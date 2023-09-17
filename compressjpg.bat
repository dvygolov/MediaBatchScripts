@echo off
SETLOCAL EnableDelayedExpansion

echo                   				JPG Size Compressor
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
