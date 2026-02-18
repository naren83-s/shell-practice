#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run the script with root user access"
   exit 1
fi
echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
   echo " instaling nginx .....  is failure"
   exit 1

else 
 
  echo " installing nginx ...... success"

fi

echo "installing mysql"
dnf install mysql -y

if [ $? -ne 0 ]; then
   echo " instaling my sql ...... FAILURE"
   exit 1
else
   echo " istalling mysql ...... SUCESS"
fi

echo "installing nodejs"
dnf install nodejs -y

if [ $? -ne 0 ]; then
  echo " installing nodejs........FAILURE"
  exit 1
else
   echo " installing nodejs ...... Sucess"
fi




