#!/bin/bash
#**********************************************************************
#Script displays 3 environmental variables using parameter substitution
#Author: Chastity
#Date: 12 Feb 21
#**********************************************************************


: ${HOSTNAME?} ${USER?} ${HOME?}
echo "Name is $HOSTNAME"
echo "You are $USER"
echo "Home directory is $HOME"
