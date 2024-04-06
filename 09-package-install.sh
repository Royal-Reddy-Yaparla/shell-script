#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"


# check if root user or not
if [ $ID -ne 0 ]
then 
    echo "$R Provide root accusses to this script $N"
    exit 1
fi


VALIDATE(){
    if [ $? -ne 0 ]
    then 
        echo "Installing $1 ... $R FAILED$N"
        exit 1
    else
        echo "Installing $1 ... $G SUCCESS$N"
    fi
}


apt install mysql-server -y
VALIDATE mysql

apt install git -y
VALIDATE git