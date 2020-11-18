#!/bin/bash
output_dir="/home/fm0300/lab/3_lab_output"
echo $$ > $output_dir/.pid
current=1
MODE="+"
usr1()
{
	MODE="+"
}
usr2()
{
	MODE="*"
}
shut_down()
{
	MODE="stop"
}
trap 'usr1' USR1
trap 'usr2' USR2
trap 'shut_down' SIGTERM
while true; do
	case $MODE in
		"*")
			let current=$current*2
			;;
		"+")
			let current=$current+2
			;;
		"stop")
			echo "Stopped by SIGTERM"
			exit
			;;
	esac
	echo $current
	sleep 1
done
