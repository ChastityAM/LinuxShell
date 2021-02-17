#!/bin/bash
#**************************
#Scripted menu for gym week
#Author: Chastity
#Date: 12 Feb 21
#**************************

loop=y

while [ "$loop" == y ]
do
        echo "Menu for the user"
        echo "******************"
        echo "A : Monday"
        echo "B : Tuesday "
        echo "C : Wednesday"
        echo "D : Thursday"
        echo "E : Friday "
        echo "F : Saturday "
        echo "G : Sunday "
        echo "Q : Exit"
        echo "******************"
        read input
        case $input in
                A | a) echo "Arm Day";;
                B | b) echo "Cardio";;
                C | c) echo "Crossfit";;
                D | d) echo "Cardio";;
                E | e) echo "Leg day";;
                F | f) echo "Cardio";;
                G | g) echo "HIIT";;
                Q | q) exit ;;
                *) echo "This is an invalid choice.";;
        esac
done
