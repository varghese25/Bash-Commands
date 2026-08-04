
#!/bin/bash
#


check_service () {



	#pgrep apache2
	if pgrep apache2 > /dev/null 2>&1
	then
		echo "apache2 is running"
	else
		echo "apache2 is not-runnin"


	fi
}

check_service


