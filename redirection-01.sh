#!/usr/bin/bash
echo " hey this is karthik "
echo "this is Redirection in shell scripting"
ls -l > output.txt 
lsdf -l >  output.txt
ls -l 1> output.txt 
lssdf -l 2> output.txt 
ls -l &> output.txt # it is for both success or fail 


# this script will not execute it is for note purpose