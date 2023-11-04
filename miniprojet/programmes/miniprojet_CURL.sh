#!/usr/bin/env bash
lineno=1
urlfile=$1

if [ $# -eq 1 ];
then
	echo "Great!"
else
	echo "it needs one argument"
	exit
fi

if [ -f $urlfile ];
then
	echo "We have the file!"
else
	echo "We do not have the file."
	exit
fi


while read -r line
do
	#retrieve http code 
	code=$(curl -Ils $line | grep -e "^HTTP/" | grep -E -o "[0-9]{3}" | tail -n 1)
	#retrieve wed encoding
	charset=$(curl -Ils $line | grep -E -o "\bcharset.+\b")
	echo "$lineno" "$line" "$code" "$charset" >> "extracted.txt"
	#increment the counter by 1
	lineno=$(expr $lineno + 1)
done < $urlfile