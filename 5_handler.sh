#!/bin/bash

output_dir="/home/fm0300/lab/3_lab_output"
mode="sum"
current=1
re='^[0-9]+$'

(tail -f -n 0 $output_dir/pipe) |
while true; do
	read LINE;
	case "$LINE" in
		"+")
			mode="sum"
			echo "mode is now sum"
			;;		
		"*")
			mode="mul"
			echo "mode is now mul"
			;;
		QUIT)
			echo "exit"
			killall tail
			exit
			;;
		*)
			if [[ $LINE =~ $re ]] ; then
				case $mode in
					"sum")
						current=$(($current+$LINE))
						;;
					"mul")
						current=$(($current*$LINE))
						;;
				esac
				echo $current
			else
				echo "Wrong input" $LINE
				exit 1
			fi
			;;
	esac
done
