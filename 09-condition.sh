#!/bin/bash

# IF condition
NUM=$1

if [ $NUM -gt 10 ]
then
    echo "Number is grater than 10"
elif [$NUM -eq 10]
then
    echo "Number is equal to 10."
else 
    echo "Number is less than 10"
fi

# expressions for arthematic -gt, lt, -eq, -ge, -le