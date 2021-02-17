#!/bin/bash
#**************************************
#Script to Mount Point File system type
#Author: Chastity
#Date: 15 Feb 21
#**************************************

count=1
for word in $(mount)
do
        # Get the specific information from the mount
        if [[ $count -eq 1 ]]
        then
                echo "Drive: "
                echo $word
        fi

        if [[ $count -eq 3 ]]
        then
                echo "Mount point: "
                echo $word
        fi

        if [[ $count -eq 5 ]]
        then
                echo "Type: "
                echo $word
        fi
# Resets the count for each new line
         count=$(( $count + 1 ))

        if [[ $count -gt 6 ]]
        then
                count=1
                echo
        fi

done
