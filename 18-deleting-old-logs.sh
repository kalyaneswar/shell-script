#!/bin/bash

SOURCE_DIRECTORY=/tmp/applogs/
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e " $G Directory exist $N"
else
    echo -e "$R Source Direcotry doesn't exist , Please make sure direcotory $G $SOURCE_DIRECTORY $N exist "
    exit 1
fi