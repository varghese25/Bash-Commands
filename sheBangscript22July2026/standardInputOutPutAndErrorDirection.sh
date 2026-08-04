pw: command not found
# pw > standardInputOutPutAndErrorDirection.sh 2>&1 # here pw is wrong command. before 2>&1 giving this it only took standard input and output.
When 2>&1 it capture all success and failure input and out paste it to file...

pwd > output.txt 2> error.txt # correct cmd standard out re-directed in error.txt no error msg capture because pwd is cmd is correct suppose if it wrong then error msg will be pasted in error.txt..
