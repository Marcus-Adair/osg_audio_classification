#!/bin/bash

# Author: Marcus Adair, University of Utah, 2024
# ----------------------------------------------

# Get passed in Vars
dataset=$1
#dataset="miaow_dataset_10"



# Check if dataset folder exists
if [ ! -d "./DATA/$dataset" ]; then
    echo "Dataset $dataset does not exist."
    exit 1
fi



echo "Writing Sug dagfile...."


# Make the SubDag file for running N jobs
> audio_c_subdagfile_v1.dag


# Iterate over files in the dataset 
i=0
for file in "./DATA/$dataset"/*; do
 
    # Remove path and extract the filename 
    filename="${file##*/}"

    echo "JOB A$i audioClassification_v2.submit" >> audio_c_subdagfile_v1.dag
    echo "VARS A$i jobNum=\"$i\"" >> audio_c_subdagfile_v1.dag
    echo "VARS A$i dataset=\"$dataset\"" >> audio_c_subdagfile_v1.dag
    echo "VARS A$i audioFilename=\"$filename\"" >> audio_c_subdagfile_v1.dag

    # TODO: add postSciptN for managing output?
   
    ((i+=1))
done


echo "Done writing Sub dagfile."

