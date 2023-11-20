#!/usr/bin/env bash

file=$1

if [ $# -ne 1 ]
then
	echo "This script takes a text file as an argument"
	exit
fi

egrep -o "\w+" $file | tr "[:upper:]" "[:lower:]" | tr -d ",?;.:!()\""
