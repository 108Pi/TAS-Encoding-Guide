:: converts all avi files in folder to gifs
:: requires nespal.png
@echo off
for %%f in (*.avi) do (
ffmpeg -i %%f -i nespal.png -filter_complex "fps=30,scale=512:-1:flags=neighbor[x];[x][1:v]paletteuse=dither=none" %%~nf.gif
)
exit
