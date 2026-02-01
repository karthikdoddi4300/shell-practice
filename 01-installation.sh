#!/bin/bash
#while installin a software ,we have to be in root user
userid=$(id -u)
if [ userid -ne 0  ]; then 
echo " please run this script with root access"

fi