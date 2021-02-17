#!/bin/bash

#***************************************************
# Script checking whether user exists in /etc/passwd
# Author: Chastity M  Date: 11 FEB 2021
#***************************************************

echo -n "Enter username"
read username

sudo cat /etc/passwd | awk -F: '{print $1}' > users.txt

if grep -Fqx "$username" ./users.txt
then
        echo "$username is present in /etc/passwd."
else
        echo "$username not found."
fi
