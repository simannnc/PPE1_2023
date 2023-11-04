#!/bin/bash
if [ $# -ne 1 ]
then
    echo "it needs 1 argument"
    exit
fi
var=1
while read -r line;
do
    echo $var.${line};
    var=$(expr $var + 1)
done < $1