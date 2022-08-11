#!/bin/bash
file=$1
x=$(wc -l "$file")
loc=$((${x:0:1}/2))
echo | awk -v var="$loc" 'NR==var {print $0}' $file
