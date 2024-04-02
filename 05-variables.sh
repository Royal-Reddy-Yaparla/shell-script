#!/bin/bash

echo "Enter username"

stty -echo
read -r USERNAME

echo "Enter password"
stty -echo
read -r PASSWORD

echo "username: $USERNAME password: $PASSWORD"

stty echo