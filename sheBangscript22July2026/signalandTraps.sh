#!/bin/bash
#
#
#
#
# sigint/ sigterm/ sigkill/ sighup: 
# trap is cmd why this script exit using this trap we can check. Syntax trap "commands" SIGNAL
#
# trap "echo 'Script interrupted`" SIGINT
#
#
trap "echo 'ctrl+c pressed.'; exit" SIGINT  # Trap command sigint
 counter=6 # Until Loop Only Runs when Condition is False; While Loop is Opposite when condition is True


while true

do
        echo "Script Running..."
	sleep 2

done 


# To execute this:  bash signalandTraps.sh [To check the OutPut ] ./signalandTraps.sh  
