#!/bin/bash

#USE: CHECK ACTIVE HOSTS USING LOOP
#DATE: 14/07/2020
#LAST MODIFIED: 14/07/2020


#READ THE ARGUMENTS ONE BY ONE SEPARATED BY SPACES AND PING THEM
for  VAR in $@  
do
	ping -q -c 1 -W 3 $VAR 2>&1 >/dev/null
	if [ $? = 0 ]
	then
		echo "$VAR is alive"
	else
		echo "$VAR is dead"
	fi
done 
