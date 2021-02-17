#!/bin/bash

#*******************
# System Report
# Author: Chastity M
# Date: 11 Feb 21
#********************

now=$(date + "%F")
log="report_$now.log

echo -n "Hostname is: " >> $log
hostname >> $log
echo -n "IP address is: " >> $log
hostname -i >> $log
echo -n "Free memory: " >> $log
free | awk 'FNR == 2 {print $3}' >> $log
echo -n "Number of CPU cores: " >> $log
nprc >> $log
