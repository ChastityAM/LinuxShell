#!/bin/bash

#**************************************
# Script checks if a file exists and
# copies it to .bak + date backup file
# Author: Chastity M  Date: 11 FEB 2021
#**************************************

NOW=$(date +"%F")
echo  "File operation: enter a filename"
read filename
#check to see if file exists
if [[ -f $filename ]]
then
        echo "$filename is a file"
        #copy file to .bak + date
        cp -i $filename ./"$filename.bak$NOW"
        echo "File copied"
        ls
else
#if file doesn't exist
        echo "File doesn't exist"
        exit 1
fi

#Lab2_2 is verifying the .bak file is made