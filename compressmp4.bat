@echo off
SETLOCAL EnableDelayedExpansion

echo                        MP4 Size Compressor
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
	FOR /F "tokens=*" %%G IN ('dir /b /S *.mp4') DO (
		echo "%%G"
		ffmpeg -i "%%G" -vcodec libx264 -crf 20 "%%G_new.mp4"
		del "%%G"
		ren "%%G_new.mp4" "%%~nxG"
	)
) ELSE (
	ffmpeg -i "%1" -vcodec libx264 -crf 20 "%~n1_new.mp4"
	del "%1"
	ren "%~n1_new.mp4" "%~nx1"
)
