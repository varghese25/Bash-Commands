#!/bin/bash
#
# Sytax
#
#
# counter=1
#
#
 counter=1 # While condition is true it run the conditon; Its opposite of until loop is False then condition execute Refer both shell script


while [ $counter -lt 5 ]

do
	echo "Counter: $counter"

	counter=$((counter++1)) #counter save the value space

done
