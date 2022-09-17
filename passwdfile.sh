#!/bin/bash
inputFile=/etc/passwd
_user=(`awk -F: '$3 >= 1000 {print $1}' $inputFile`)

count=`awk -F: '$3 >= 1000 {print $1}' $inputFile | wc -l`

_gID=(`awk -F: '$3 >= 1000 {print $4}' $inputFile`)

_shell=(`awk -F: '$3 >= 1000 {print $7}' $inputFile`)

for (( i=0; i<$count; i++ ))
do
echo The User: ${_user[i]} belongs to the GroupID: ${_gID[i]} and has a shell access ${_shell[i]}
done

