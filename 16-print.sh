#!/bin/bash

# single line print
echo "Hello Bash" >> sample.txt

# multi line print
cat <<EOF > config.cnf
[settings]
username=user
password=pass
EOF
