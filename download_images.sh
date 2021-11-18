#!/bin/bash

# download test images and remove garbage

# download the image
wget https://s3-us-west-1.amazonaws.com/cogniac-public-data/PythonBackendInterviewExerciseImages.zip
#unzip file
unzip PythonBackendInterviewExerciseImages.zip
#remove macosx extra files
rm -rf images/flowers/.DS_Store
rm -rf images/.DS_Store 
rm -rf __MACOSX/