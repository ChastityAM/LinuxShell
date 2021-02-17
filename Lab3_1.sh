#!/bin/bash
#***************************************
#Script loops 2 values lt 10 and prints all values
# else, will add nums gt 10 and print results
#Author: Chastity
#Date: 11 Feb 21
#***************************************

#Take in values
echo -n "Enter first number: "
read num1
echo "Enter second number: "
read num2

if [[$num1 -lt 10 && $num1 -gt $num2 ]]
then

        for num in $(seq $num1)
        do
               echo "$num"
       done
elif [[ $num2 -lt 10 && $num2 -gt $num1 ]]
      then
              for num in $(seq $num2)
        do
                echo "$num"
        done
elif [[ $num1 -lt 10 ]]
then
        for num in $(seq $num1)
        do
                echo "$num"
        done
elif [[ $num2 -lt 10 ]]
then
        for num in $(seq $num2)
        do
                echo "$num"
        done
else
        echo "$num1+$num2=$(( $num1 + $num2 ))"
        echo "$num"

fi
