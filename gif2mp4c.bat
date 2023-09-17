@echo off
SETLOCAL EnableDelayedExpansion

echo                   			GIF 2 MP4 with crop Converter
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
