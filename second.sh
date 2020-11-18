#!/bin/bash
home_dir="/home/fm0300/lab/3_lab_sh"
output_dir="/home/fm0300/lab/3_lab_output"
at -f $home_dir/first.sh now + 2 minutes
tail -f -n 0 $output_dir/report
