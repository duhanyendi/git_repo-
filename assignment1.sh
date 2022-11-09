#!/bin/bash 

# first function prints the minimum and maximum values 
csv_file=~/Desktop/workshop/parking.csv
maximum= cut -d, -f5 < $csv_file | sort -n | tail -1 | uniq # maximum value
minimum= cut -d, -f5 < $csv_file | sort  | head -1 | uniq # minimum value

# source code borrowed from https://www.youtube.com/watch?v=cCEOrUu22pE&t=407s to calculate mean 

mean= awk -F',' 'BEGIN{sum=0; counter=0}{sum=sum+$5; counter=counter+1}END{print sum/counter}' parking.csv

cut -d, -f4,5 < $csv_file | sort | uniq
cut -d, -f4,5,8 < $csv_file | sort | uniq | grep "STOP -" > output.csv




