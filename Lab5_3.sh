#!/bin/bash
#*******************************************************************
#Script for using an array to print a matrix of '*' for a given size
#Author: Chastity
#Date: 12 Feb 21
#*******************************************************************


echo "Enter Width: "
read width

echo "Enter Height: "
read height

matrix_array=()

for h in seq $(seq $(( height -1 )))
do
        for w in $(seq $width)
        do
                matrix_array+=("'*'")
        done
        echo ${matrix_array[*]}
        unset matrix_array[*]
done
