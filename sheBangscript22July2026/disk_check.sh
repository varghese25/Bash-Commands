#!/bin/bash
#
#Dish Usage command
#



usage=`df -h | grep "efivarfs" | awk '{print $5}' | sed 's|%||g'`

echo "Current Disk Usage : $usage"

if [ $usage -lt 60 ]; then
	echo "Disk Usage is Normal: $usage%"

elif [ $usage -lt 80 ]; then
	echo "Disk Usage is Warning: $usage%"
elif [ $usage -lt 90 ]; then
        echo "Disk Usage is Critical: $usage%"
	echo "Take Immediate Action"

else
	echo "Disk Usage is Critical: $usage%"
	echo "Take Immediate Action"

fi






