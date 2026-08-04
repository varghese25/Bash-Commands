


#!/bin/bash
#
#
#


check_service() {

service=$1 # Arugment
action=$2 # Argument


if pgrep $service > /dev/null 2>&1
then

	echo "$service is Running..."
else
	echo "$service is Not-Running.."
	sudo systemctl $action $service
	# sudo systemctl status apache2
	

fi


}


# I/o 
echo "Enter Your Service Name to Check:" # Output echo

read service # Input requested from user ; read used 


echo "What should i do ? start/stop/status"

read action


check_service "$service" " $action"


