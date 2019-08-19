#!/bin/bash
File=/home/abhishek/Desktop/Db.csv
#echo $File
if [ -f "$File" ]; then
    echo "file exist"
fi

Dir=/home/abhishek/Desktop/BaseScript
if [ -d "$Dir" ]; then
    echo "directory exist"
fi
#echo "Hello World"

