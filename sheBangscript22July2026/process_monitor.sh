
#!/bin/bash

# Variable

process_name="apache2"

#Infinite loop 


while true
do

#Check if process is running


if pgrep $process_name > /dev/null

then

echo "$(date): $process_name is running"

else

echo "$(date): $process_name is NOT running"

echo "$(date): Starting $process_name service..."

sudo systemctl start $process_name

fi

#Wait for 1 second

sleep 1

done

