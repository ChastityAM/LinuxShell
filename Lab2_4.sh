#!/bin/bash
#**************************
#Script takes filename and prints description of the file
#Author: Chastity
#Date: 11 Feb 12
#***************************


echo "Choose a file:"
read filename

stat -c"%F" $filename
