@echo off
set /p f=upscale factor:
(for %%i in (*.avi) do @echo file '%%i') > e2OVejDPt5UYoqLK.txt
ffmpeg -safe 0 -f concat -i e2OVejDPt5UYoqLK.txt -vf scale=iw*%f%:ih*%f%:flags=neighbor -c:v libx264 -pix_fmt yuv420p -c:a libopus -b:a 256k output.mp4
del e2OVejDPt5UYoqLK.txt
echo encoding finished
pause
