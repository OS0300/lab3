#!/bin/bash
home_dir="/home/fm0300/lab/3_lab_sh"
$home_dir/multip.sh & 
first_pid=$!
$home_dir/multip.sh & 
second_pid=$!
$home_dir/multip.sh & 
third_pid=$!

cpulimit -p $first_pid -l 10 -b


kill $third_pid

#to kill all after
sleep 7
kill $first_pid
kill $second_pid



