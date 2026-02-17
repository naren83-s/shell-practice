#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "please run the script with root user access"
   exit 1
fi
echo "installing nginx"
dnf install nginx -y

if [$? -ne 0 ]; tnen
   echo " instaling nginx .....  is failure"
   exit 1

else 
 
  echo " installing nginx ...... success"

fi




