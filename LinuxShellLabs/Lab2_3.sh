#!/bin/bash
#*******************************
#Script prompts for number and prints win or lose
#Author: Chastity M
#Date: 11 Feb 12
#*******************************

#Get number
echo "Enter any number greater than 10: "
read num
#if num is higher than 10 and not div/2
if [[ $num -gt 10 && $(( $num % 2 )) == 1 ]]
then
        echo "YOU WIN!"
#if num is lt 10
elif [[ $num -le 10 ]]
then
        echo "Invalid Number"
else
        echo "YOU FAIL :("
fi
