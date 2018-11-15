#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin02.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-15 15:09:35
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================
# Turn on debug mode set-x: Display cmd and their args as they r executed
set -x

# Run shell cmd
echo "Hello, ${LOGNAME}"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"
w
set +x #turn off debug mode 

echo "hello, ${LOGNAME}"


set -n #only read cmd but donot execute them, 
#usually use to check syntax ERR
#set -o noexec
echo 'This is a test!'
