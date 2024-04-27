#!/bin/bash

echo "Enter username"

stty -echo
read -r USERNAME

echo "Enter password"
stty -echo
read -r PASSWORD

# read -s PASSWORD
# we can use -s for hide entries but need ./<file> to excute script

echo "username: $USERNAME password: $PASSWORD"

stty echo
