#!/usr/bin/env bash
if [ $# -ne 2 ];
then
  echo "Please enter two arguments: YEAR and ENTITY."
  exit 1
fi

YEAR="$1"
ENTITY="$2"

if ((YEAR >= 2016 && YEAR <= 2018)); then
    NUMBER_ENTITY=$(cat /User/siman/PPE1_2023/Files/ann/$YEAR/*/* |egrep $ENTITY |wc -l)
    echo "$ENTITY for $YEAR: $NUMBER_ENTITY"
else
    echo "$YEAR should be 2016, 2017 or 2018 "
fi