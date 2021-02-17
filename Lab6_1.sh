#!/bin/bash
#***********************************************************************
#Script chekcs if port 22 is up and then does ssh and prints internal ip
#Author: Chastity
#Date: 15 FEB 21
#***********************************************************************

#check if port is open
nc -zv  172.31.63.174 22

if [ $? -eq 0 ] #if open
then #print open and internal ip
    echo "TCP port 22 opened on Linux"
    ifconfig | grep inet | awk 'NR==1 {print $2}'
else  #otherwise, print closed
        echo "TCP port 22 closed on Linux"
fi
