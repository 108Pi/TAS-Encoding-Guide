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
### Hardware accelerating with NVENC
If you have a Nvidia gpu you can use NVENC to encode with hardware.

[Script for NVENC encoding](EncodeNVENC.bat) - Place in the same folder as your AVI. Rename it to input.avi and run the batch script. 

An upscale factor of 9 (4K) is recommended if the video is being uploaded to YouTube.

A factor of 6 will be 1440p. 
