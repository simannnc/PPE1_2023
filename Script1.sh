#!/usr/bin/env bash


echo "Location en 2016" > location.txt
cat /Users/siman/PPE1_2023/Files/ann/2016/*/*.ann | grep Location | wc -l >> location.txt

echo "Location en 2017" >> location.txt
cat /Users/siman/PPE1_2023/Files/ann/2017/*/*.ann| grep Location | wc -l >> location.txt

echo "Location en 2018" >> location.txt
cat /Users/siman/PPE1_2023/Files/ann/2018/*/*.ann | grep Location | wc -l >> location.txt