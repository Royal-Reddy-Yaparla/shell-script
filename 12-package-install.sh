#!/bin/bash

ID=$(id -u)

Y="\e[33m"
G="\e[32m"
R="\e[31m"
N="\e[0m"


if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR:: provide root user access to script$N"
    exit 1
else
    echo -e "$G you are a root user$N"
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " Installing $2 .. $G SUCCESS $N"
        exit 1
    else
        echo -e " Installing $2 .. $R FAILED $N"
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
        echo -e " $package is already install so $Y SKIPPING $N"
    fi
done