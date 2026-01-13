#!/bin/bash 



echo "====================================="
echo Hi varghese,Hope Your doing well..Go to this path for learning basic /home/varghese/bash_varghese


# Ask for user input
read -p "Enter your First Name: " First_Name
read -p "Enter your Last Name: " Last_Name
read -p "Enter your Age: " Age
read -p "Enter your Location: " Location



# Condition To check Eligibility

if [ "$Age" -ge 18 ] 

then
	echo "Allow to vote"
else
	echo "Dont Allow"
fi

# Display info nicely
echo ""
echo "=============================="
echo "       Display Voter Info     "
echo "=============================="
echo "First Name : $First_Name"
echo "Last Name  : $Last_Name"
echo " Age 	 : $Age" 
echo "Location   : $Location"
echo "=============================="




