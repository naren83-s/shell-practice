#!/bin/bash

echo "all args passed to script $@"

echo " number of vars passed to sript $#"
echo " script name: $0"
echo " present directory :$PWD"
echo " who is running : $USER"
echo " home directory of current user $HOME"
echo " PID of the script :$$"
sleep 100 &
echo " PID of recently executed background process : $!"
echo " all args passed : $*"