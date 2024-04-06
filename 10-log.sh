#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

DATESTAMP=$(date +%F-%H-%M-%S)
LOG_FILE="/tmp/$0-$DATESTAMP.log"

echo "script excuted at $DATESTAMP" >> $LOG_FILE
# check if root user or not
if [ $ID -ne 0 ]
then 
    echo "$R Provide root accusses to this script $N"
    exit 1
fi


VALIDATE(){
    if [ $1 -ne 0 ]
    then 
        echo "Installing $2 ... $R FAILED$N" 
    else
        echo "Installing $2 ... $G SUCCESS$N" 
    fi
}


apt-get install mysql-server -y >> $LOG_FILE
VALIDATE $? mysql

apt-get install git -y >> $LOG_FILE
VALIDATE $? git