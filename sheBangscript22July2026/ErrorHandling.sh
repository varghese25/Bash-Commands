#!/bin/bash
#
#
#Error Handling with Logical Operators (&&, ||)
#
#
mkdir Linux_demo1_Folder

if [ $? -eq 0 ]
	then  
	echo "Command executed tasks completed"
else
	echo "Tasks Failed"
	exit 1


fi

# ReadMe
# Step1 when you run this sh ErrorHandling.sh
# Step 2 It create Linux_demo1_Folder 
# Step 3 echo $? -> it will 0
# Step 4 try run result will be Task failed if echo $? it will exit 1 as failed beause Linux_demo1_Folder
#
#
#
# Logical || ( Or)
# mkdir Linux_demo1_Folder || echo "Failed" # Logical  || (or) Try to create folder if not exit it will create one or it will fail . Belwo live
# example:
#
#mkdir: cannot create directory ‘Linux_demo1_Folder’: File exists
# Failed


#Logical && 
#
#sudo apt update && sudo apt -y install apache2 
#
#Meaning first it must execute  sudo apt update , successfully and it next intall apche2 this logicall &&.
#
#
#
#mkdir -p Linux_demo1_Folder || echo "Failed".
# mkdir -p Linux_demo1_Folder/sub1/sub2 # two sub folder in Linux_demo1_Folder.
#
# This error handing can done using commandLine CLI..
#



