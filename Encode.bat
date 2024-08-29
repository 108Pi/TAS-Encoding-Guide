@echo off
set /p f=upscale factor: 
ffmpeg -i input.avi -c:v libx264 -pix_fmt yuv420p -c:a copy -vf scale=iw*%f%:ih*%f% -sws_flags neighbor output.mkv
echo encoding finished
pause
exit
