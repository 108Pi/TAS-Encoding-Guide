@echo off
set /p f=upscale factor: 
set /a w=%f%*256
set /a h=%f%*240
ffmpeg -i input.avi -c:v libx264 -pix_fmt yuv420p -c:a copy -s %w%x%h% -sws_flags neighbor output.mkv
echo encoding finished
pause
exit
