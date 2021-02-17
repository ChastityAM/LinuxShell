#!/bin/bash
#********************
#Script for backup directory
#Author: Chastity
#Date: 12 FEB 21
#*********************
now=$(date +"%F -%T")
log="backup_$now.tar"

create_tar()
{
        tar -cf $log $1
}
create_tar $1
