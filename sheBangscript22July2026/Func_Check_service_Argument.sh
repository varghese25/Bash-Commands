#!/bin/bash
#
#
#
#
#
check_service() {

             service=$1

	if pgrep $service > /dev/null 2>&1
	then
		echo "$service is Running"
	else
		echo "$service is Not Running"
	fi


}

check_service "apache2"
check_service "mysqld"
check_service "nginx"
check_service "docker"
