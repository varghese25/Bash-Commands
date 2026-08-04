



#ls /home

#ls /home1 # Try this view O/p

# echo "Exit status: $?" # ($0) Script base file name ($1) argument  ($2) argument  (?) means Exit status value




#if [ $? -eq 0 ] # either in this way we can give
if ls /home # Or like this
then
	echo "Command executed, tasks completed"
else
	echo "Task failed"
fi
