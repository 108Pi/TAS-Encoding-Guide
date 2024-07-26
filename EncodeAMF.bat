@echo off
set /p f=upscale factor:
ffmpeg -i input.avi -pix_fmt nv12 -c:a copy -c:v h264_amf -vf scale=iw*%f%:ih*%f% -sws_flags neighbor output.mkv
echo encoding finished
pause
exit 
