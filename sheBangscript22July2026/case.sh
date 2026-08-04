#! /bin/bash
#
#
#


#Sytax

#case $variable in 

#	input1)

#		input2)

#		*)

# esac


echo "Select Option: "

echo "1. Show disk usage"
echo "2. Show memory usage"
echo "3. Show logged in users"


read OPTION


case $OPTION in


1|one)      echo "Current Disk Usage"
	df -h
	echo ""
	;; # double semmiColon to close

2|two) # Multi Patten either user can press numer Or Type number
        echo "Current Memory Usage"
	free -m
	echo ""
	;;
3|three)
        echo "Logged In Users"
	who
        echo ""
	;;

*)
	echo "Invalid Option"
	echo "Re-Run the Script, Vaild Option 1,2,3"

esac










