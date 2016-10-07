#!/bin/zsh
DATE=$(date +"%Y-%m-%d")     
#Create the video
mkdir videos
ffmpeg -y -framerate 20 -pattern_type glob -i "captured/$DATE/*.jpg" -c:v libx264 -r 30 -pix_fmt yuv420p videos/$DATE.mp4
