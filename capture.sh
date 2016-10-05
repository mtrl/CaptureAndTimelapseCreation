#!/bin/bash
mkdir captured
cd captured
watch -n5 'TIME=$(date +"%Y%m%d-%H%M%S");imagesnap -d "Mobius" $TIME.jpg'
