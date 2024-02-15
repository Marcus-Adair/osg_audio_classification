#!/bin/bash
#
# Author: Marcus Adair
#
# Purpose: This file initializes folders and things required for running
#   	   the worklfow after being cloned from GitHub
# ---------------------------------------------------------------------- :

# Make a directory called DATA if it doesn't exist. 
# This directory is to hold downloaded datasets.

directory_name="DATA"

# Check if DATA exists
if [ ! -d "$directory_name" ]; then 
    mkdir "$directory_name"
    echo "Directory '$directory_name' created."
else
    echo "Directory '$directory_name' already exists."
fi


