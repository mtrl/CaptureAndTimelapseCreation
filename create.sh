#!/bin/zsh
# Rotate the images
DATE=$(date +"%Y-%m-%d")     
mkdir processed
cd captured/$DATE
for i in *.jpg; do;convert $i -rotate 180 ../../processed/$i;done
# Timestamp the images
cd ../../processed
#for i in *.jpg; do;convert $i -background white label:$i -gravity Center -append $i;done
 for i in *.jpg; do;composite label:$i -gravity south $i $i;done
#Create the video
mkdir ../videos
ffmpeg -y -framerate 20 -pattern_type glob -i "*.jpg" -c:v libx264 -r 30 -pix_fmt yuv420p ../videos/$DATE.mp4
cd ..
# Clean up
rm -rf processed
