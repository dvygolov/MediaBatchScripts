```                
                    Bat Files for Media Processing
    _            __     __  _ _             __          __  _     
   | |           \ \   / / | | |            \ \        / / | |    
   | |__  _   _   \ \_/ /__| | | _____      _\ \  /\  / /__| |__  
   | '_ \| | | |   \   / _ \ | |/ _ \ \ /\ / /\ \/  \/ / _ \ '_ \ 
   | |_) | |_| |    | |  __/ | | (_) \ V  V /  \  /\  /  __/ |_) |
   |_.__/ \__, |    |_|\___|_|_|\___/ \_/\_/    \/  \/ \___|_.__/ 
           __/ |                                                  
          |___/             https://yellowweb.top                 

If you like these scripts, PLEASE DONATE!  
USDT TRC20: TKeNEVndhPSKXuYmpEwF4fVtWUvfCnWmra
Bitcoin: bc1qqv99jasckntqnk0pkjnrjtpwu0yurm0qd0gnqv  
Ethereum: 0xBC118D3FDE78eE393A154C29A4545c575506ad6B  
```
# MediaBatchScripts

Here are some scripts that may help you in your day to day work with landings and creatives.
These scripts work only on Windows systems and can compress, convert or make unique various media files, including:

- jpg/jpeg
- png
- gif
- mp4

## Installation

You will need to download and unpack/install somewhere this free software:

- [FFMpeg](https://www.gyan.dev/ffmpeg/builds/#release-builds)
- [MozJPEG](https://github.com/mozilla/mozjpeg/releases)
- [PNGQuant](https://pngquant.org/)
- [NConvert](https://www.xnview.com/en/nconvert/)
- [ImageMagick](https://www.xnview.com/en/nconvert/)

After you are done, place the paths to these software pieces (to their main EXE files) right to you PATH Environment Variable.
So that you can use them from the command line. If you don't know, how to edit your PATH Environment Variable and add there new
paths to the exe-files of all needed software - then GOOGLE IT!

Or you can take a look at the example of [adding new path here](https://yellowweb.top/unikalizacziya-kreativov-dlya-facebook-bystro-b/)

### Running Scripts

Place the script into the folder, where your media-files are located.
If you want to process all of the files of the specific type in the folder then just run the script as is.
If you need to process only one file then run the script in the command-line and use the filename as a parameter.
For example:

_compressjpg.bat mybigimage.jpg_

## Script types

### Compression

- compressjpg.bat
- compressmp4.bat
- compresspng.bat

These scripts can be used to compress one or more media-files.
**Always keep the original file and compare quality before deleting the original!**

### Gif To Video Conversion

- gif2mp4.bat
- gif2webm.bat

If you don't know - GIF is EVIL! It weighs A LOT, video is much-much better. So use these scripts to convert your GIF-files to MP4 or to WebM formats.

### Make Unique Files

- uniquejpg.bat
- uniquepng.bat
- uniquemp4.bat

These batch-files adds small amount of random noise to your images or videos. They are almost invisible to the human's eye, but to the computer
algorythms the original file and the file with noise won't be the same ones.

### Change MP4 Speed

- speedmp4.bat

This script changes speed of a MP4 video.
For example, it works good, when Facebook starts to reject your video. Just change the speed and almost always you are good to go!
