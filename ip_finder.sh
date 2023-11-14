#!/bin/bash

for url in $(cat website.txt)
do 
 echo "$url ip is : " $(ping -c 2 $url | grep "64 bytes from" | awk 'NR == 2''{print $5}'| tr -d ":")
done

