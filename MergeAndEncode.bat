@echo off
set /p f=upscale factor: 
(for %%i in (*.avi) do @echo file '%%i') > list.txt
ffmpeg -safe 0 -f concat -i list.txt -c copy input.avi
del list.txt
ffmpeg -i input.avi -c:v libx264 -c:a copy iw*%f%:ih*%f%-sws_flags neighbor output.mkv
del input.avi
echo encoding finished
pause
exit