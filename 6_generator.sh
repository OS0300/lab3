#!/bin/bash
output_dir="/home/fm0300/lab/3_lab_output"
handler_pid=$(cat $output_dir/.pid)
while true; do
	read LINE
	case $LINE in
		"+")
			kill -USR1 $handler_pid
			;;
		"*")
			kill -USR2 $handler_pid
			;;
		"TERM")
			kill  -SIGTERM $handler_pid
			exit
			;;
	esac

done
