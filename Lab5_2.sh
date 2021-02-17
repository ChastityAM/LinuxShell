#!/bin/bash
#**********************************************
#Script loops through muliples of 5 through 100
#Author: Chastity
#Date: 12 Feb 21
#***********************************************


count=5
while (( count <= 100 ));
do
    echo $count
    (( count += 5 ))
done
