#!/bin/zsh
# Rotate the images
mkdir processed
for i in *.jpg; do;convert $i -rotate 180 processed/$i;done
# Timestamp the images
cd processed
#for i in *.jpg; do;convert $i -background white label:$i -gravity Center -append $i;done
 for i in *.jpg; do;composite label:$i -gravity south $i $i;done
#Create the video
ffmpeg -y -framerate 10 -pattern_type glob -i "snapshot*.jpg" -c:v libx264 -r 30 -pix_fmt yuv420p ../out.mp4
cd ..
# Clean up
rm -rf processed
