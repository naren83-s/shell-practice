#!/bin/bash

START_TIME=$(date +%s)
echo "script executed at:: $START_TIME"

sleep 10

END_TIME=$(date +%s)

TOTAL_TIME=$(($NED_TIME-$START_TIME))

echo "scipt executed in : $TOTAL_TIME"