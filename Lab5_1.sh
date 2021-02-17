#!/bin/bash
#**************************************
#Script for printing array of 10 things
#Author: Chastity
#Date: 12 Feb 21
#***************************************

#Enter 10 string items into an array and print the contents
drinks=("Milk" "Tea" "Water" "Coffee" "Cider" "Juice" "Cocoa" "Coke" "Wine" "Lemonade" )
echo "The array contains: " ${drinks[*]}
