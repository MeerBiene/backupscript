echo Test 1
echo Enter the name of your project. This is the name all your backup files will have.
read NAME
echo Are you sure $NAME is the name you want to use? [yes/no]
read varnameconfirm
	if [ "$varnameconfirm" = "yes" ]; then

		echo Writing ..
	else
		exit 1;
	fi
echo Enter the user you want to use at your remote server
read USER
echo Are you sure $USER is the user you want to use? [yes/no]
read varconfirm1
	if [ "$varconfirm1" = "yes" ]; then
		echo Loading..
	else
		exit 1;
	fi
echo Enter the domain or IP of your remote server
read DOMAIN
echo Are you sure $DOMAIN is the right domain? [yes/no]
read varconfirm2
	if [ "$varconfirm2" = "yes" ]; then
		echo Loading .. Make sure to use SSH Keys.
	else
		exit 1;
	fi
echo 'Enter how long you want to keep your backups (in days)'
read TIMEKEEP
echo Are you sure $TIMEKEEP is the amount of days you want to keep your files?
read timekeepconfirm
	if [ "$timekeepconfirm" = "yes" ]; then
		echo Writing ...
	else
		exit 1;
	fi


echo Starting to create remoteruntime
echo 1. Enter the path of the directory you want to back up
read PATHREMOTE
echo Are you sure $PATHREMOTE is the correct path? [yes/no]
read varconfirmpathremote
	if [ "$varconfirmpathremote" = "yes" ]; then
		echo Loading..
	else
		exit 3;
	fi

echo '2. Enter the user the remoteserver should use to connect to your local server'
read USERLOCAL
echo Is $USERLOCAL the correct user? [yes/no]
read varconfirmusrlcl
	if [ "$varconfirmusrlcl" = yes ]; then
		echo Writing...
	else
		exit 1;
	fi
echo 3. 'Enter the domain or IP of your local server'
read DOMAINLOCAL
echo Are you sure $DOMAINLOCAL is the right IP/Domain? [yes/no]
read domainlocalconfirm
	if [ "$domainlocalconfirm" = "yes" ]; then
		echo Writing ..
	else
		exit 1;
	fi
echo 4. Enter your local path
read PATHLOCAL
echo Is $PATHLOCAL the correct path? [yes/no]
read varconfirmpathlcl
	if [ "$varconfirmpathlcl" = yes ]; then
		echo Writing...
	else
		exit 1;
	fi



cat > remoteruntime1.sh <<EOF
echo Remoteruntime starting ..
echo Creating Archives ...
echo tar cvzf "$NAME"_backup.tar.gz $PATHREMOTE
echo Attempting to transfer files
echo rsync -avzhe ssh --progress "$NAME"_backup.tar.gz $USERLOCAL@$DOMAINLOCAL:$PATHLOCAL
echo Transfer successfull
echo Removing sourcefile
echo rm "$NAME"_backup.tar.gz
echo Remoteruntime done
EOF

echo 'Creating local runtime...'
FILE=$PATHLOCAL/$NAME_backup.tar.gz
FILE1=$PATHLOCAL/$NAME_backup_1.tar.gz
FILE2=$PATHLOCAL/$NAME_backup_2.tar.gz
FILE3=$PATHLOCAL/$NAME_backup_3.tar.gz
FILE4=$PATHLOCAL/$NAME_backup_4.tar.gz
FILE5=$PATHLOCAL/$NAME_backup_5.tar.gz
FILE6=$PATHLOCAL/$NAME_backup_6.tar.gz
FILE7=$PATHLOCAL/$NAME_backup_7.tar.gz
FILE8=$PATHLOCAL/$NAME_backup_8.tar.gz
FILE9=$PATHLOCAL/$NAME_backup_9.tar.gz
FILE10=$PATHLOCAL/$NAME_backup_10.tar.gz
FILE11=$PATHLOCAL/$NAME_backup_11.tar.gz
FILE12=$PATHLOCAL/$NAME_backup_12.tar.gz
FILE13=$PATHLOCAL/$NAME_backup_13.tar.gz
FILE14=$PATHLOCAL/$NAME_backup_14.tar.gz
FILE15=$PATHLOCAL/$NAME_backup_15.tar.gz
FILE16=$PATHLOCAL/$NAME_backup_16.tar.gz
FILE17=$PATHLOCAL/$NAME_backup_17.tar.gz
FILE18=$PATHLOCAL/$NAME_backup_18.tar.gz
FILE19=$PATHLOCAL/$NAME_backup_19.tar.gz
FILE20=$PATHLOCAL/$NAME_backup_20.tar.gz
FILE21=$PATHLOCAL/$NAME_backup_21.tar.gz
FILE22=$PATHLOCAL/$NAME_backup_22.tar.gz
FILE23=$PATHLOCAL/$NAME_backup_23.tar.gz
FILE24=$PATHLOCAL/$NAME_backup_24.tar.gz
FILE25=$PATHLOCAL/$NAME_backup_25.tar.gz
FILE26=$PATHLOCAL/$NAME_backup_26.tar.gz
FILE27=$PATHLOCAL/$NAME_backup_27.tar.gz
FILE28=$PATHLOCAL/$NAME_backup_28.tar.gz
FILE29=$PATHLOCAL/$NAME_backup_29.tar.gz
FILE30=$PATHLOCAL/$NAME_backup_30.tar.gz
LOG=$PATHLOCAL/log_latest.txt
LOG1=$PATHLOCAL/log_1.txt
LOG2=$PATHLOCAL/log_2.txt
LOG3=$PATHLOCAL/log_3.txt
LOG4=$PATHLOCAL/log_4.txt
LOG5=$PATHLOCAL/log_5.txt
LOG6=$PATHLOCAL/log_6.txt
LOG7=$PATHLOCAL/log_7.txt
LOG8=$PATHLOCAL/log_8.txt
LOG9=$PATHLOCAL/log_9.txt
LOG10=$PATHLOCAL/log_10.txt
LOG11=$PATHLOCAL/log_11.txt
LOG12=$PATHLOCAL/log_12.txt
LOG13=$PATHLOCAL/log_13.txt
LOG14=$PATHLOCAL/log_14.txt
LOG15=$PATHLOCAL/log_15.txt
LOG16=$PATHLOCAL/log_16.txt
LOG17=$PATHLOCAL/log_17.txt
LOG18=$PATHLOCAL/log_18.txt
LOG19=$PATHLOCAL/log_19.txt
LOG20=$PATHLOCAL/log_20.txt
LOG21=$PATHLOCAL/log_21.txt
LOG22=$PATHLOCAL/log_22.txt
LOG23=$PATHLOCAL/log_23.txt
LOG24=$PATHLOCAL/log_24.txt
LOG25=$PATHLOCAL/log_25.txt
LOG26=$PATHLOCAL/log_26.txt
LOG27=$PATHLOCAL/log_27.txt
LOG28=$PATHLOCAL/log_28.txt
LOG29=$PATHLOCAL/log_29.txt
LOG30=$PATHLOCAL/log_30.txt

cat > backup.sh <<EOF
echo 'Starting backup process'
	if [ -f "$FILE30" ]; then
		echo Old File exists, purging!
		rm "$NAME"_backup.tar.gz
	fi
	if [ -f "$FILE29" ]; then
		mv "$NAME"_backup_29.tar.gz "$NAME"_backup_30.tar.gz
	fi
	if [ -f "$FILE28" ]; then
		mv "$NAME"_backup_28.tar.gz "$NAME"_backup_29.tar.gz
	fi
	if [ -f "$FILE27" ]; then
		mv "$NAME"_backup_27.tar.gz "$NAME"_backup_28.tar.gz
	fi
	if [ -f "$FILE26" ]; then
		mv "$NAME"_backup_26.tar.gz "$NAME"_backup_27.tar.gz
	fi
	if [ -f "$FILE25" ]; then
		mv "$NAME"_backup_25.tar.gz "$NAME"_backup_26.tar.gz
	fi
	if [ -f "$FILE24" ]; then
		mv "$NAME"_backup_24.tar.gz "$NAME"_backup_25.tar.gz
	fi
	if [ -f "$FILE23" ]; then
		mv "$NAME"_backup_23.tar.gz "$NAME"_backup_24.tar.gz
	fi
	if [ -f "$FILE22" ]; then
		mv "$NAME"_backup_22.tar.gz "$NAME"_backup_23.tar.gz
	fi
	if [ -f "$FILE21" ]; then
		mv "$NAME"_backup_21.tar.gz "$NAME"_backup_22.tar.gz
	fi
	if [ -f "$FILE20" ]; then
		mv "$NAME"_backup_20.tar.gz "$NAME"_backup_21.tar.gz
	fi
	if [ -f "$FILE19" ]; then
		mv "$NAME"_backup_19.tar.gz "$NAME"_backup_20.tar.gz
	fi
	if [ -f "$FILE18" ]; then
		mv "$NAME"_backup_18.tar.gz "$NAME"_backup_19.tar.gz
	fi
	if [ -f "$FILE17" ]; then
		mv "$NAME"_backup_17.tar.gz "$NAME"_backup_18.tar.gz
	fi
	if [ -f "$FILE16" ]; then
		mv "$NAME"_backup_16.tar.gz "$NAME"_backup_17.tar.gz
	fi
	if [ -f "$FILE15" ]; then
		mv "$NAME"_backup_15.tar.gz "$NAME"_backup_16.tar.gz
	fi
	if [ -f "$FILE14" ]; then
		mv "$NAME"_backup_14.tar.gz "$NAME"_backup_15.tar.gz
	fi
	if [ -f "$FILE13" ]; then
		mv "$NAME"_backup_13.tar.gz "$NAME"_backup_14.tar.gz
	fi
	if [ -f "$FILE12" ]; then
		mv "$NAME"_backup_12.tar.gz "$NAME"_backup_13.tar.gz
	fi
	if [ -f "$FILE11" ]; then
		mv "$NAME"_backup_11.tar.gz "$NAME"_backup_12.tar.gz
	fi
	if [ -f "$FILE10" ]; then
		mv "$NAME"_backup_10.tar.gz "$NAME"_backup_11.tar.gz
	fi
	if [ -f "$FILE9" ]; then
		mv "$NAME"_backup_9.tar.gz "$NAME"_backup_10.tar.gz
	fi
	if [ -f "$FILE8" ]; then
		mv "$NAME"_backup_8.tar.gz "$NAME"_backup_9.tar.gz
	fi
	if [ -f "$FILE7" ]; then
		mv "$NAME"_backup_7.tar.gz "$NAME"_backup_8.tar.gz
	fi
	if [ -f "$FILE6" ]; then
		mv "$NAME"_backup_6.tar.gz "$NAME"_backup_7.tar.gz
	fi
	if [ -f "$FILE5" ]; then
		mv "$NAME"_backup_5.tar.gz "$NAME"_backup_6.tar.gz
	fi
	if [ -f "$FILE4" ]; then
		mv "$NAME"_backup_4.tar.gz "$NAME"_backup_5.tar.gz
	fi
	if [ -f "$FILE3" ]; then
		mv "$NAME"_backup_3.tar.gz "$NAME"_backup_4.tar.gz
	fi
	if [ -f "$FILE2" ]; then
		mv "$NAME"_backup_2.tar.gz "$NAME"_backup_3.tar.gz
	fi
	if [ -f "$FILE1" ]; then
		mv "$NAME"_backup_1.tar.gz "$NAME"_backup_2.tar.gz
	fi
	if [ -f "$FILE" ]; then
		mv "$NAME"_backup.tar.gz "$NAME"_backup_1.tar.gz
	fi

echo Taking care of logs ...

	if [ -f "$LOG30" ]; then
		echo Old Logfile exists, purging!
		rm log_30.tar.gz
	fi
	if [ -f "$LOG29" ]; then
		mv log_29.tar.gz log_30.tar.gz
	fi
	if [ -f "$LOG28" ]; then
		mv log_28.tar.gz log_29.tar.gz
	fi
	if [ -f "$LOG27" ]; then
		mv log_27.tar.gz log_28.tar.gz
	fi
	if [ -f "$LOG26" ]; then
		mv log_26.tar.gz log_27.tar.gz
	fi
	if [ -f "$LOG25" ]; then
		mv log_25.tar.gz log_26.tar.gz
	fi
	if [ -f "$LOG24" ]; then
		mv log_24.tar.gz log_25.tar.gz
	fi
	if [ -f "$LOG23" ]; then
		mv log_23.tar.gz log_24.tar.gz
	fi
	if [ -f "$LOG22" ]; then
		mv log_22.tar.gz log_23.tar.gz
	fi
	if [ -f "$LOG21" ]; then
		mv log_21.tar.gz log_22.tar.gz
	fi
	if [ -f "$LOG20" ]; then
		mv log_20.tar.gz log_21.tar.gz
	fi
	if [ -f "$LOG19" ]; then
		mv log_19.tar.gz log_20.tar.gz
	fi
	if [ -f "$LOG18" ]; then
		mv log_18.tar.gz log_19.tar.gz
	fi
	if [ -f "$LOG17" ]; then
		mv log_17.tar.gz log_18.tar.gz
	fi
	if [ -f "$LOG16" ]; then
		mv log_16.tar.gz log_17.tar.gz
	fi
	if [ -f "$LOG15" ]; then
		mv log_15.tar.gz log_16.tar.gz
	fi
	if [ -f "$LOG14" ]; then
		mv log_14.tar.gz log_15.tar.gz
	fi
	if [ -f "$LOG13" ]; then
		mv log_13.tar.gz log_14.tar.gz
	fi
	if [ -f "$LOG12" ]; then
		mv log_12.tar.gz log_13.tar.gz
	fi
	if [ -f "$LOG11" ]; then
		mv log_11.tar.gz log_12.tar.gz
	fi
	if [ -f "$LOG10" ]; then
		mv log_10.tar.gz log_11.tar.gz
	fi
	if [ -f "$LOG9" ]; then
		mv log_9.tar.gz log_10.tar.gz
	fi
	if [ -f "$LOG8" ]; then
		mv log_8.tar.gz log_9.tar.gz
	fi
	if [ -f "$LOG7" ]; then
		mv log_7.tar.gz log_8.tar.gz
	fi
	if [ -f "$LOG6" ]; then
		mv log_6.tar.gz log_7.tar.gzs
	fi
	if [ -f "$LOG5" ]; then
		mv log_5.tar.gz log_6.tar.gz
	fi
	if [ -f "$LOG4" ]; then
		mv log_4.tar.gz log_5.tar.gz
	fi
	if [ -f "$LOG3" ]; then
		mv log_3.tar.gz log_4.tar.gz
	fi
	if [ -f "$LOG2" ]; then
		mv log_2.tar.gz log_3.tar.gz
	fi
	if [ -f "$LOG1" ]; then
		mv log_1.tar.gz log_2.tar.gz
	fi
	if [ -f "$LOG" ]; then
		mv log_latest.txt log_1.tar.gz
	fi

find -type f -name '"$NAME"_backup_$TIMEKEEP.tar.gz' -delete
find -type f -name 'Log_$TIMEKEEP.txt'

ssh $USER@$DOMAIN "./remoteruntime.sh"

echo Backup done.

exit 1;

EOF

exit 1;
echo Test
echo i wanna get to 420 lines amena
