#!/bin/bash

# Input
FILENAME=$1
MESSAGE=$2

# add to stage 
git add $FILENAME


# commit to the code with message
git commit -m "$MESSAGE"

# push 
git push origin main