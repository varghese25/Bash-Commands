#!bin/bash


#Nested if-else Conditions

#Yes—here are common Bash “test” keywords (used like `if [ ... ]; then`):

#- **`-d`** : directory exists  
#- **`-f`** : file exists (regular file)  
#- **`-e`** : file or directory exists (any type)  
#- **`-s`** : file exists and is **not empty**  
#- **`-r`** : readable  
#- **`-w`** : writable  
#- **`-x`** : executable  
#- **`-L`** : symbolic link  
#- **`-b`** : block device  
#- **`-c`** : character device  

#Numeric comparisons:
#- **`-eq`** : equal  
#- **`-ne`** : not equal  
#- **`-lt`** : less than  
#- **`-le`** : less than or equal  
#- **`-gt`** : greater than  
#- **`-ge`** : greater than or equal  

#Example:
#```bash
#if [ -f "$fileName" ]; then
 # echo "file exists"
#fi
#```
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#


fileName="Test.txt"

if [ -d logs ]; 
then

echo "Directory logs Exits "

 if [ -f syslog ];
then


echo "syslog exists "

rm -rf syslog
cp -rf /var/log/syslog syslog



if [ -f syslog ];

then
	echo "file exits"

else

	echo "file not copied"
fi


echo "syslog not exists "


else

   cp -rf /var/log/syslog syslog
 echo " copied "

 fi
fi



