#!/bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
   echo "Please ru this script with root user"
fi





