#!/bin/bash
#
# Sytax 
# which is same as while ; just change to until 
#
#
# counter=1
#
#
 counter=6 # Until Loop Only Runs when Condition is False; While Loop is Opposite when condition is True


until [ $counter -lt 5 ]

do
        echo "Counter: $counter"

        counter=$((counter++1)) #counter save the value space


	if [ $counter -eq 10 ] # when reach the 10 loop will break OutPut 6,7,8,9
	then
		break
	fi

done    
