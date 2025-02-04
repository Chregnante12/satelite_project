#!/usr/bin/bash

dir=analyzed_data_shell

file1=$dir/highest_temperature.csv
file2=$dir/humidity_data_Rwanda.csv
var1=/c/Users/User/Desktop/satelite_project/raw_data/satelite_temperature_data.csv
var2=/c/Users/User/Desktop/satelite_project/raw_data/satelite_temperature_data.csv

sort -t, -k3 -nr $var1 | head -10 > $file1
grep "Rwanda" $var2 | sort -t, -k4 -nr > $file2

mv $file1 $dir/highest_temperature2.csv
mv $file2 $dir/humidity_data_Rwanda2.csv
