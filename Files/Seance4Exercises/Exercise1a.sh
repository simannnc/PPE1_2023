#!/usr/bin/env bash
YEAR=$1
ENTITY=$2

NUMBER_ENTITY=$(cat /User/siman/PPE1_2023/Files/ann/$YEAR/*/* |egrep $ENTITY |wc -l)
echo "Number of annotations of $ENTITY for $YEAR: $NUMBER_ENTITY"