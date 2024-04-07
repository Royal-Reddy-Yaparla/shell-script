#!/bin/bash

ID=$(id -u)

Y="\e[33m"
G="\e[32m"
R="\e[31m"
N="\e[0m"


if [ $ID -ne 0 ]
then 
    echo "$R ERROR:: provide root user access to script$N"
    exit 1
else
    echo "$G you are a root user$N"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo " Installing $2 .. $G SUCCESS $N"
        exit 1
    else
        echo " Installing $2 .. $R FAILED $N"
    fi
}

for package in "$@"
do 
    yum list installed $package
    if [ $? -ne 0 ]
    then
        yum install $package -y
        VALIDATE $? $package
    else
        echo " $package is already install so $Y SKIPPING $N"
    fi
done