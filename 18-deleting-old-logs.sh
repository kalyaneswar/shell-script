#!/bin/bash

SOURCE_DIRECTORY=/tmp/applogs/
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ -d $SOURCE_DIRECTORY ]
then
    echo -e " $G Directory exist $N"
else
    echo -e "$R Source Direcotry doesn't exist ,$N Please make sure direcotory $G $SOURCE_DIRECTORY $N exist "
    exit 1
fi

# to crate old dates files
# touch -d 20240401 kalyan{1..5}.txt

FILES=$(find $SOURCE_DIRECTORY -name "*.txt" -mtime +14)

echo "files to delete $FILES"

while IFS= read -r line
do 
    echo "Deleting file : $line"
    rm -rf $line
done <<< $FILES