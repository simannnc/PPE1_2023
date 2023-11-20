#!/bin/bash
if [ $# -ne 1 ]; then
    echo "it needs 1 argument"
    exit
else
    if [ -f $1 ];
    then 
        echo "we have it"
    else
        echo "we do not"
        exit
    fi
fi
urlfile=$1
lineno=1
while read -r lines;
do
    echo -e "${lineno}\t${lines}"
    lineno=$(expr $lineno + 1)
done < "$urlfile"