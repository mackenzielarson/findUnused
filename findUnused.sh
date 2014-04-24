#!/bin/bash

#Author: Mackenzie Larson
#Date: 3/26/14
#Assignment: Project01 cs210

# The program will look at files within the sample directory.
# If a file exists in a directory but it is not referenced by any files in the current directory (in this case directory.json), it will be listed as output.


# Look for image files within the sample directory inside of the current working directory.
# Find each image file types individually and save it in /tmp/patterns.

#finds all files with name.jpg .png and .gif puts into temporary file  "patterns"

fileList=$(find . | grep -E ".+(txt|json|xml)");
imageList=$(find . | grep -E ".+(jpg|png|gif|jpeg)");

# Print a list of files that DO NOT exist.
# The variable 'p' is a representation of /tmp/patterns.

for image in $imageList; 
do
    for textFile in $fileList;
    do
        # TODO: Remove duplicate entries
        # Add logic to only print an image once

        # echo Searching for $image in $textFile
        grep -q $(basename $image) $fileList;
        if [ $? -eq 1 ]; 
        then
            echo $image;
        fi
    done
done

