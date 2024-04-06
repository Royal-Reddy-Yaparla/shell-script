#!/bin/bash

NUMBER=$1
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
NORMAL="\e[0m"

# check arguments supplied ot not , if not exit 
if [ $# -eq 0 ]
then 
    echo -e "$YELLOW No arguments supplied $NORMAL"
    exit 1
fi

re='^[0-9]+$'
# check argument is numerical or not
if ! [[ $NUMBER =~ $re ]]
then 
    echo -e "$YELLOW Input argument is not a number $NORMAL"
    exit 1
fi

# check number is greaterthan 100 or not
if [ $NUMBER -gt 100 ]
then 
    echo -e "given number $NUMBER is $GREEN greaterthan $NORMAL 100"
else
    echo -e "given number $NUMBER is $RED not greaterthan $NORMAL 100" 
fi