#!/bin/bash

#*************************************************************************
# Script will loop through 3 instances and print system report for all 3
# and generate failed report for each
# Author: Chastity M
# Date: 11 Feb 21
#**************************************************************************


log="LAb-01.log"

echo -n "Hostname is: " >> $log
hostname >> $log
echo -n "IP address is: " >> $log
hostname -i >> $log
echo -n "Free memory: " >> $log
free | awk 'FNR == 2 {print $3}' >> $log
echo -n "Number of CPU cores: " >> $log
nprc >> $log
echo -n "Failed Report: " >> $log
sudo grep -i 'failed' /var/log/messages | awk -F,'{print $0} NR==10{exit}'|sort -n -k3 >> $log
