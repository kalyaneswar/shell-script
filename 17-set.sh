#!/bin/bash

set -e

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

dnf install mysqlll -y
dnf install git -y

echo "script still executing?"