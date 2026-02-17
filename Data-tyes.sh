#!/bin/bash

NUM1=100
NUM2=200

SUM=$((NUM1+NUM2))
echo " sum is : $SUM"

FRUITS=("apple" "banana" "pomo")

echo "fruits are ${FRUITS[@]}"
echo " FIrst Fruit is : ${FRUITS[0]}"
echo " Second Fruit is : ${FRUITS[1]}"
echo " Thitd Fruit is : ${FRUITS[2]}"