#/bin/bash

USERID=$(id -u)
TIMESTAMP=date +%F:%H:%M:%S
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

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

# check user is super user ot not(root)
if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access."
    exit 1 #manually exist if error comes.
else
    echo "You are root user."
fi

dnf install mysql -y
VALIDATE $? "Installing MySQL"

dnf install git -y
VALIDATE $? "Installing Git"