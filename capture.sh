#!/bin/bash
mkdir captured
cd captured
DATE=$(date +"%Y-%m-%d")
mkdir $DATE
cd $DATE
TIME=$(date +"%Y%m%d-%H%M%S")
imagesnap -d "Mobius" $TIME.jpg
