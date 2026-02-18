#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOG_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
   echo "please run the script with root user access"
   exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE(){

    if [ $1 -ne 0 ]; then
       echo " $2 .....  is failure"
       exit 1
    else 
        echo " $2 ...... success"
    fi

}

dnf install nginx -y &>> $LOG_FILE
VALIDATE $? "instaling nginx"

dnf install mysql -y &>> $LOG_FILE
VALIDATE $? "instlling mysql"

dnf install nodejs -y &>> $LOG_FILE
VALIDATE $? "installing nodejs"




