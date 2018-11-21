#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin04.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-15 15:48:44
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================

export var=123  #this is error: var1 = 123, there is no blank
echo "$var1"
echo "${var1}"
printf "var1 value is: %d\n" ${var1}

echo "$varab"   # This var is not define and give init_value, so nothing gona output to screen.
echo "${varab=colorful life}"
echo "${varab-colorful life}"
