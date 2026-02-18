#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run the script with root user access"
   exit 1
fi
VALIDATE(){

    if [ $1 -ne 0 ]; then
       echo " $2 .....  is failure"
       exit 1
    else 
        echo " $2 ...... success"
    fi

}

dnf inatall nginx -y
VALIDATE $? "inataling nginx"

dnf install mysql -y
VALIDATE $? "inatlling mysql"

dnf install nodejs -y
VALIDATE $? "installing nodejs"




