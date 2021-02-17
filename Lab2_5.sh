#!/bin/bash

#**************************************
# Script for calculator
# Author: Chastity M  Date: 11 FEB 2021
#**************************************

echo "Enter first number"
read x

echo "Enter second number"
read y

addition(){
        add=$(( x + y ))

echo "Add: " $add
subtraction #invoke function in another function
}
subtraction(){
        sub=$(( x - y ))
echo "Subtract: " $sub
division
}
multiply(){
        mult=$(( x * y ))
echo "Multiply: " $mult
modulous
}
division(){
        div=$(( x / y ))
echo "Division - Quotient: " $div
multiply
}
modulous(){
        mod=$(( x % y ))
echo "Modulous - Remainder: " $mod
}
#invoke the function
addition

exit 0
