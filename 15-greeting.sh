#!/bin/bash

NAME=""
WISH="Good Morning"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

USAGE(){
    echo "usage: $0 -n <name>.. -g <wish>.."
    echo "wishing someone , and saying what doing currently"
    echo -e "$Y -n    Name argumeent, which is mandatory ex : john"
    echo -e "$Y -w    Wish argumeent, which is optional ex : good morning"
    echo -e "$Y --help    option for help $N"
}

while getopts ":n:w:--help" opt; do
    case $opt in
        n ) NAME="$OPTARG";;
        w ) WISH="$OPTARG";;
        --help ) USAGE; exit ;;
        \?) echo "Invalid option: -"$OPTARG"" >&2
            USAGE; exit 1;;
    esac  
done

if [ -z $NAME ]; then
    echo -e "$R Error : Name is manadory$N"
    USAGE
    exit 1
fi

echo -e "Hello $G $NAME $N, $Y $WISH $N I am learning DevOps"