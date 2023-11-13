#!/usr/bin/env bash

nb_file=$1
nb_words=$2

if [ $# -ne 1 ]
then 
    echo "This script takes a text file as an argument"
    exit
fi 

if [ -z $2 ]
then 
    nb_words=25
fi

bash cleaned_data.sh $1 | sort | uniq -c | sort -nr | head -n $nb_words
