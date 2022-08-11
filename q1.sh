#!/bin/bash
file=$1
num=$(awk 'END {print NR}' $file)
num=$((num/2))
echo | awk -v var=$num 'NR==var {print $0}' $file
