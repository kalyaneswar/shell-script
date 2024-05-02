#!/bin/bash

USERID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

VALIDATE(){
    # echo "Exist status: $1"
    # echo "What are you doing : $2"
    if [ $1 -ne 0 ]
    then
        echo "$2..FAILURE"
        exit 1
    else
        echo "$2..SUCESS"
    fi
}

if [ $USERID -ne 0 ]
then
    echo "Please run this script with root access."
    exit 1 # manually exit if error comes.
else
    echo "You are super user."
fi

for i in $@
do
    echo "Packages to Install: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0 ]
    then
        echo -e "$i already installed ..$Y SKIPPING $N"
    else
        echo "$i Not installed ..Need to Install"
        dnf install $i -y &>>$LOGFILE
        VALIDATE $? "Installation of $i"
    fi
done
