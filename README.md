# TAS Encoding Guide
## Recording AVI
Using Mesen to record your AVI is recommended. It offers advantages over FCEUX in terms of accuracy, speed, and ease of encoding.

[Mesen download for Windows](https://www.mesen.ca/download.php). On Linux it must be built from source. See [COMPILING.MD](https://github.com/SourMesen/Mesen/).

Press ESC to pause the emulator. Go to 'Tools > Movies > Play' to select the movie file.

The movie must be saved as a .fm2. If you are trying to encode a TAS made in Bizhawk, see see [this conversion script](https://github.com/108Pi/BK2ToFM2).

To record your AVI go to 'Tools > Video Recorder > Record' and select None (Uncompressed) as the video codec. 

Unpause the emulator and press f9 to fast-foward. The emulator will pause again once the movie finishes. 

Select 'Tools > Video Recorder > Stop Recording'

## Encoding
FFmpeg: Installation for [Windows](https://www.wikihow.com/Install-FFmpeg-on-Windows) and [Linux](https://linuxize.com/post/how-to-install-ffmpeg-on-debian-9/)

[Script for encoding](Encode.bat) - Place in the same folder as your AVI. Rename it to input.avi and run the batch script. 

If you have a Nvidia gpu you can use NVENC to encode with hardware. [Script for NVENC encoding](EncodeNVENC.bat)

If you have a Radeon gpu you can use AMF to encode with hardware. [Script for AMF encoding](EncodeAMF.bat)

An upscale factor of 9 (4K) is recommended if the video is being uploaded to YouTube.

If uploading to Discord, a factor of 4 usually works well. Also be sure to change the file extension to .mp4 in the batch script. 
### A note on resolution 
The video will likely appear blury if its vertical resolution is not a factor of the vertical resolution of the monitor it is displayed on. If the video resolution is smaller than the screen, the video will be upscaled to fill the screen. Most programs do this by taking an average of pixel colors. Usually this makes it look less pixelated, but if the result is supposed to be pixelated then it makes it look blury. Second, if the resolution of the video is larger than the screen but does not divide evenly, then some pixels will be different sizes when displayed. 
