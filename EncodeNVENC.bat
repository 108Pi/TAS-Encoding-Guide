@echo off
set /p f=upscale factor:
set /a w=%f%*256
set /a h=%f%*240
ffmpeg -i input.avi -c:v h264_nvenc -vf "hwupload_cuda,scale_cuda=%w%:%h%:1" -b:v %f%M output.mp4
echo encoding finished
pause
exit