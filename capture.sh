#!/bin/bash
mkdir captured
cd captured
DATE=$(date +"%Y-%m-%d")
mkdir $DATE
cd $DATE
TIME=$(date +"%Y%m%d-%H%M%S")
/usr/local/Cellar/imagesnap/0.2.5/bin/imagesnap -d "Mobius" $TIME.jpg
# Rotate, timestamp and upload to mtrl
convert $TIME.jpg -rotate 180 $TIME.jpg
TIMESTAMP=`date`
composite label:"$TIMESTAMP" -gravity south $TIME.jpg $TIME.jpg
scp $TIME.jpg mark@mtrl.co.uk:www/webcam/webcam.jpg
