@echo off
set /p f=upscale factor:
ffmpeg -i input.avi -c:v h264_nvenc -vf "hwupload_cuda,scale_cuda=iw*%f%:ih*%f%:1" -b:v %f%M output.mkv
echo encoding finished
pause
exit