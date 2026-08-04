#!/bash/bin
#
#
#
#
#


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



# command line argument Syntax: sh cmd_line_arg_bash_sh_schript.sh apache2 status
check_service $1 $2

