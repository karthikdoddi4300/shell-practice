#!/bin/bash

#while installin a software ,we have to be in root user

LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
userid=$(id -u)
if [ $userid -ne 0  ]; then 
echo " please run this script with root access"
exit 1
fi
mkdir -p LOGS_FOLDER

VALIDATE(){
    if [  $1 -ne 0 ]; then  
        echo " $2  ....is failure"
        exit 1
    else 
        echo "$2  .....is success"
    fi
}

for package in $@
do 
    dnf install $package -y  &>> $LOGS_FILE
    VALIDATE $? "$package installattion"
done



