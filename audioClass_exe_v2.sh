#!/bin/bash
#
# Author: Marcus Adair
# ------------------------ :

# Name of audio file to classify
filename=$1

OG_DIR=$(pwd)

# Navigate to the model 
cd /models/research/audioset/yamnet


echo "will do a classification for the file: ${filename}"

#python3 inference.py "${OG_DIR}/${filename}"


