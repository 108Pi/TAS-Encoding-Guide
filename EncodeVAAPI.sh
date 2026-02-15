read -p "File name: " n
read -p "Upscale factor: " f
ffmpeg -vaapi_device /dev/dri/renderD128 -i $n.avi -vf "scale=iw*$f:ih*$f,format=nv12,hwupload" -c:v h264_vaapi $n.mkv
echo encoding finished
read -p "Press any key to continue..."
