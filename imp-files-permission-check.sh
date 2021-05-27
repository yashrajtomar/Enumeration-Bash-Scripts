#!/bin/bash
#USE:CHECK IMPORTANT FILES FOR THEIR PERMISSIONS
#DATE:13/07/2020
#LAST MODIFIED:13/07/2020



echo "Important files with their permissions :"

files="/etc/passwd /etc/sudoers /etc/init.d /etc/crontab /etc/cron.d /etc/cron.daily /etc/cron.hourly /etc/cron.monthly /etc/cron.weekly /etc/exports /etc/anacrontab" 
for  i in $files
do
        VAR_READ="NO"
        VAR_WRITE="NO"
        VAR_EXECUTE="NO"
	echo "File name : $i"
        if [ -r $i ]; then VAR_READ="YES"; echo -e "Read :\t\t $VAR_READ";else echo -e "Read :\t\t $VAR_READ";fi;
        if [ -w $i ]; then VAR_WRITE="YES";echo -e "Write :\t\t $VAR_WRITE";else echo -e "Write :\t\t $VAR_WRITE";fi;
        if [ -x $i ]; then VAR_EXECUTE="YES";echo -e "Execute :\t $VAR_EXECUTE"; else echo -e "Execute :\t $VAR_EXECUTE";fi;
	echo "--------------------------------------"

done     
