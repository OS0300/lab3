#!/bin/bash

output_dir="/home/fm0300/lab/3_lab_output"

date=$(date +%F_%T)

mkdir $output_dir/test && echo "catalog test was created successfully" > $output_dir/report && touch $output/test/$date

ping www.net_nikogo.ru || echo $date "random error message" >> $output_dir/report

