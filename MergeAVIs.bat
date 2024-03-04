::Merges .avi files based on alphabetical/numeric order 
@echo off
(for %%i in (*.avi) do @echo file '%%i') > avilist.txt
ffmpeg -safe 0 -f concat -i avilist.txt -c copy merged.avi
del avilist.txt
echo finished merging AVIs
pause
exit