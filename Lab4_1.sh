#!/bin/bash
#**********************
#Script for disk space
#Author: Chastity
#Date: 12 FEB 21
#**********************
now=$(date +"%T")
log="diskspace$now.log"

space_free=$( df -h | awk '{ print $5 }' | sort -n | tail -n 1 | sed 's/%//' )
#if usage is beyond 10%, generate logfile w/ timestamp
if [ $space_free -gt 10 ]
then
        echo "Disk space greater than 10%" >> $log
fi
