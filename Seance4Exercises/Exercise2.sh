#!/usr/bin/env bash

YEAR="$1"
MONTH="$2"
NUM_LOCA="$3"

cat /User/siman/PPE1_2023/Files/ann/$YEAR/$MONTH/*.ann | grep Location | cut -f 3 | sort | uniq -c | sort -nr | head -n "$NUM_LOCA"