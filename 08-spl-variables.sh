#!/bin/bash

# Imp commands to note down for interviews in variables topic
echo "All variables: $@"
echo "No. of variables passed: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD"
echo "Home direcotory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Hostname: $HOSTNAME"
echo "Process ID of the current shell script: $$"
sleep 60 &
echo "Process ID of last background command: $!"
