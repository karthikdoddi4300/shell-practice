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

dnf install nginx -y  &>> $LOGS_FILE # $? checks the exit code of the nginx and pass to the validate fun 
VALIDATE $? "INSTALLING NGINX" # here we are passing two arguments to the VALIDATE function  that are $? and "installing nginx"

dnf install nodejs -y &>> $LOGS_FILE
VALIDATE $? "INSTALLING NODEJS"
