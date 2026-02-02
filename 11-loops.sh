#!/bin/bash

#while installin a software ,we have to be in root user
userid=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
if [ $userid -ne 0  ]; then 
echo " please run this script with root access"
exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){
    if [  $1 -ne 0 ]; then  
        echo " $2  ....is failure"
        exit 1
    else 
        echo "$2  .....is success"
    fi
}

for package in $@ # sh 11-lopps.sh myswl nginx java python 
do 
    dnf install $package -y  &>> $LOGS_FILE
    VALIDATE $? "$package installattion"
done



