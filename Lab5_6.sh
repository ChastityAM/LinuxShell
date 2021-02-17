#!/bin/bash
#********************************************************
#Script to bubble sort input of 3 nums in ascending order
#Author: Chastity
#Date: 12 Feb 21
#********************************************************

#Input for array
echo "enter num1:"
read num1
echo "enter num2:"
read num2
echo "enter num3:"
read num3
#making the array from input
my_array=($num1 $num2 $num3)
#Performing Bubble Sort
for ((i = 0; i<3; i++))
do
        for ((j = 0; j<3-i-1; j++))
        do
                if [ ${my_array[j]} -gt ${my_array[$((j+1))]} ]
                then
                        #swap
                        temp=${my_array[j]}
                        my_array[$j]=${my_array[$((j+1))]}
                        my_array[$((j+1))]=$temp
                fi
        done
done
#Printing the array so you can see it's been sorted
for item in ${my_array[@]}
do
        echo $item
                        my_array[$j]=${my_array[$((j+1))]}
                        my_array[$((j+1))]=$temp
                fi
        done
done
