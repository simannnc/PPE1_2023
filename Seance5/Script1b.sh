#!/usr/bin/env bash

if [ $# -ne 1 ]; then
  echo "Please enter one argument: ENTITY "
  exit 1
fi

ENTITY="$1"

for YEAR in 2016 2017 2018; 
do
  echo "The results for "$YEAR" are saved in Locations.txt : "
  ./Script1a.sh "$YEAR" "$ENTITY" >> Locations.txt
done