#!/bin/bash

echo "we are going add two number"
NUMBER1=$1

NUMBER2=$2

ADDITION=$((NUMBER1+NUMBER2))
SUBTRACTION=$((NUMBER1-NUMBER2))
MULTIPLICATION=$((NUMBER1*NUMBER2))
DIVISION=$((NUMBER1/NUMBER2))

echo "Addition of $NUMBER1  and $NUMBER2 is $ADDITION"
echo "Subtraction of $NUMBER1  and $NUMBER2=$SUBTRACTION"

echo "Multiplication of $NUMBER1  and $NUMBER2 is $MULTIPLICATION"
echo "Divison of $NUMBER1  and $NUMBER2=$DIVISION"


echo "all arguments $@ "
echo "total number of arguments $#"