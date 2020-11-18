#!/bin/bash

output_dir="/home/fm0300/lab/3_lab_output"

while true; do
	read LINE
	echo "$LINE" >> $output_dir/pipe
	if [[ $LINE = "QUIT" ]] ; then
		exit
	fi
done
