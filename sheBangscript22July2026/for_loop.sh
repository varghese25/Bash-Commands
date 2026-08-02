#!/bin/bash
#
#for  i in 1 2 3 4 5
#do
#	 echo $i
# done
#
#
for user in varghese root 
 do
	 echo ""
	 echo $user
	 id $user
	 echo ""
 done
for loop in varghese
	 do
		 echo ""
		 echo $loop
		 echo ""
 done






 for username in `cat user_list.txt`
 do
	 echo ""
	 echo $username
	 echo ""
 done
