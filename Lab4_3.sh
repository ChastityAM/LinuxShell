#!/bin/bash
#*****************************************
#Script to add user if user doesn't exist
#Author: Chastity
#Date: 12 FEB 21
#*****************************************

now=$( date +"%F")
log="user_$now.log"

add_user()
{
        if [[ id $1 ]]
        then
                echo "User already exists" >> $log
        else
                sudo adduser $1
        fi
}

add_user $1
