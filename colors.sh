#!/bin/bash

USERID=$(id -u)
LOGS_FOLDER="var/log/shell-script"
LOG_FILE="var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
   echo -e "$R Please run the scipt in root user$n" | tee -a $LOG_FILE
   exit 1
fi

mkdir -p $LOGS_FOLDER
 VALIDATE (){

    if [ $1 -ne 0 ]; then
       echo -e "$2 ...... $R FAILURE $N" | tee -a $LOG_FILE
       exit 1
    else 
        echo -e "$2 ........ $G SUCESS $N" |tee -a $LOG_FILE
    fi
 }

 for package in $@
 do 
  dnf list installed $package &>> $LOG_FILE
   if [ $? -ne 0 ]; then
      echo -e "$package  Not  installed , $Y installing Now $N" 
      dnf install $package &>> $LOG_FILE
      VALIDATE $? "$package installing"
    else
      echo -e "$packege $Y already installed $N" 
    fi
done
