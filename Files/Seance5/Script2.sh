#!/usr/bin/env bash
if [ $# -ne 3 ];
then
    echo "Please enter 3 arguments: Year, Month and Numbers of Locations."
    exit
fi

YEAR=$1
MONTH=$2
NUM_LOCA=$3

if [[ $YEAR =~ 201(6|7|8) ]];
then
    if [[ $MONTH =~ 0[1-9]|1[0-2] ]];
    then
        if [[ $NUM_LOCA =~ [0-9]+ ]];
            then
            cat /User/siman/PPE1_2023/Files/ann/$YEAR/$MONTH/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n $NUM_LOCA
            else
            echo "The argument NUM_LOCA need to be a positive number."
            exit
        fi
    else
    echo "The argument MONTH need to be from 1 to 12."
    exit
    fi
else
echo "The argument YEAR should be 2016, 2017 or 2018."
exit
fi