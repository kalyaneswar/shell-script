#/bin/bash

USERID=$(id -u)

# check user is super user ot not(root)
if [ $USERID -ne 0 ]
then
    echo "Please run the script with root access."
    exit 1 #manually exist if error comes.
else
    echo "You are root user."
fi

dnf install mysql -yc

if [ $? -ne 0 ]
then
    echo "Installation of MySQl....FAILED"
    exit 1
else
    echo "Installation of MySQl....SUCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git....FAILED"
    exit 1
else
    echo "Installation of git....SUCESS"
fi