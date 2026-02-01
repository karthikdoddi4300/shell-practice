#!/bin/bash
echo " conditions in shell "
num1= 100
num2= 200
if [$num1 -gt $num2 ]; then 
    echo " $num1 is greater than $num2 "
else
    echo " $num2 is greater than $num1"