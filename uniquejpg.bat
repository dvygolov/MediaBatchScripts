@echo off
SETLOCAL EnableDelayedExpansion

echo                   			Unique JPG Maker
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
	echo "Uniqueize whole JPG directory..."
	FOR /F "tokens=*" %%G IN ('dir /b *.jpg,*.jpeg') DO (
		nconvert -out png -o "%%~nG_ywb.jpg" -q 95 -rmeta -rexifthumb -noise uniform 0.!random! "%%G"
	)
	echo "Jpg dir uniqueization complete!"
) ELSE (
	echo "Uniqueize single JPG file..."
	nconvert -out jpeg -o "%~n1_ywb.jpg" -q 95 -rmeta -rexifthumb -noise uniform 0.1 "%1"
	echo "Uniqueization complete!"
)
