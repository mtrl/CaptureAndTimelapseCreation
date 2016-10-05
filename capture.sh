#!/bin/bash
mkdir captured
cd captured
DATE=$(date +"%Y-%m-%d")
mkdir $DATE
cd $DATE
TIME=$(date +"%Y%m%d-%H%M%S")
/usr/local/Cellar/imagesnap/0.2.5/bin/imagesnap -d "Mobius" $TIME.jpg
