 
  # :!bin/bash
#
#
#
#
# if else conditon
#
#if one or five  is close to bracket; It consider as char or num so out put will different  else will display.
#
#- `<` : **not** used for numeric compare in `[ ... ]` (often treated as redirection)
#  ' >` : **not** used for numeric compare in `[ ... ]`
# `-lt` : numeric **less than** (`a -lt b`)
# `-le` : numeric **less than or equal** (`a -le b`)
# `-gt` : numeric **greater than** (`a -gt b`)
# `-ge` : numeric **greater than or equal** (`a -ge b`)
# `-eq` : numeric **equal** (`a -eq b`)
# `-ne` : numeric **not equal** (`a -ne b`)


#
#
#
#
#
#
#
#
#

#if [ 1 -lt 5 ]

#then
#	echo '======'
#	echo 'Yes lesser'

#else
#	echo '======'
#	echo 'No Grater'
#	

#fi
#

File=/home/varghese/NewDemoFile.txt

 if [ ! -f $File  ]

then
	 touch $File
 else
	echo "new" >> $File
fi





