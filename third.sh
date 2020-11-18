#!/bin/bash
home_dir="/home/fm0300/lab/3_lab_sh"
echo "*/5 * * * wed $home_dir/task1.sh" | crontab
