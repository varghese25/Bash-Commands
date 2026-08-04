#!/bin/bash
#
#
#
mkdir Linux_demo1_Folder


set -x  # from here the debugging mode activated till how many we can keep. 
ls /home
pwd

set +x  #Want to stop debugging till this line we can use this commad it from start to stop what ever code it will debugg and show error.

id
who


# sh -x DebuggingShellScripts.sh -> sh -x is Debugging mode 
# bash -x DebuggingShellScripts.sh -> bash -x Debugging mode.
# 
# specific line debug mode can be actived see above like this its written set -x. belwo the output
#
# mkdir: cannot create directory ‘Linux_demo1_Folder’: File exists
#+ ls /home
#varghese
#+ pwd
# /home/varghese/Desktop/mintZena22.3/Bash-Commands/sheBangscript22July2026

#
# Example below..

#varghese@varghese-Lenovo-E40-70:~/Desktop/mintZena22.3/Bash-Commands/sheBangscript22July2026$ sh -x DebuggingShellScripts.sh
#+ mkdir Linux_demo1_Folder
#mkdir: cannot create directory ‘Linux_demo1_Folder’: File exists
#+ ls /home
#varghese
#+ pwd
#/home/varghese/Desktop/mintZena22.3/Bash-Commands/sheBangscript22July2026
#varghese@varghese-Lenovo-E40-70:~/Desktop/mintZena22.3/Bash-Commands/sheBangscript22July2026$ bash -x DebuggingShellScripts.sh
#+ mkdir Linux_demo1_Folder
#mkdir: cannot create directory ‘Linux_demo1_Folder’: File exists
#+ ls /home
#varghese
#+ pwd
#/home/varghese/Desktop/mintZena22.3/Bash-Commands/sheBangscript22July2026
#varghese@varghese-Lenovo-E40-70:~/Desktop/mintZena22.3/Bash-Commands/sheBangscript22July2026$


