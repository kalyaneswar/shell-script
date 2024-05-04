#!/bin/bash

COURSE="Devops Practice from current script"

echo "Before Calling other script , course: $COURSE"
echo "Process id of current shell script: $$"

./16-others-script.sh

echo "Before Calling other script , course: $COURSE"

echo "Now calling with source command"
source ./16-others-script.sh

 

