#!/bin/bash
message=$1
gender=$2
ip_address=$3

file=$(echo $message | awk '{print $1}')

case $gender in
	f)
		say -vKathy -o/tmp/$file.mp4 $message
		scp /tmp/$file.mp4 admin@$ip_address:/www/data 
		echo "Listen to the message on $ip_address/www/data/$file.mp4"
		;;
	m)
		say -vAlex -o/tmp/$file.mp4 $message
		scp /tmp/$file.mp4 admin@$ip_address:/www/data 
		echo "Listen to the message on $ip_address/www/data/$file.mp4"
		;;
	x)
		say -vZarvox -o/tmp/$file.mp4 $message
		scp /tmp/$file.mp4 admin@$ip_address:/www/data 
		echo "Listen to the message on $ip_address/www/data/$file.mp4"
		;;	*)
		echo "Unknown voice type"
esac
