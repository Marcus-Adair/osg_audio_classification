#!/bin/bash

# Author: Marcus Adair, University of Utah, 2024
# ---------------------------------------------


# Generate a unique string based on date and time
unique_string=$(date +"%Y%m%d_%H%M%S")

# Create unique directory
unique_directory_name="audioClassificationOutput_$unique_string"
mkdir "$unique_directory_name"


# Go in the dir and make a dir for dag log files
cd "$unique_directory_name"
mkdir "dagoutput"
cd ..


# Move the log/error/out files to it from the DAGMan workload
mv audio_classification_job_* "$unique_directory_name/"


# Move the sugdag files to it
mv audio_c_subdagfile* "$unique_directory_name/dagoutput"

