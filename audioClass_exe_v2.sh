#!/bin/bash
#
# Author: Marcus Adair
# ------------------------ :

# Name of audio file to classify
filename=$1


OG_DIR=$(pwd)

# Navigate to the model 
cd /models/research/audioset/yamnet


echo "Doing a classification for the file: ${filename}"
python3 inference.py "${OG_DIR}/${filename}"

# TODO: maybe write the inference to a file to transfer out? 


