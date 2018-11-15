#! /bin/bash

#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin01.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-14 10:44:55
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================

echo hello world
echo "hello world"
echo "Current data: $(date) @ $(hostname)"
echo "Network configuration"
/sbin/ifconfig
pwd
/bin/pwd
echo "Hello, ${LOGNAME}"
echo "Today is $(date)"
echo "Users currently on the machine, and their processes:"
w		#use man w to help yourself
