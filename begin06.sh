#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin06.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-19 11:09:43
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================


#arithmetic eaxpansion and evaluation is done like this
#syntax is $((expession))
echo $((2+3))
x=2
y=5
sum=$((x+y))
echo "$x + $y = $sum"
#if u try this, this is not u want
sum1=x+y   #there is not syntax ERR, but isn't u wanna!!!
echo "$x + $y = $sum1"

#use declear to creat variables
#declear [-i,-s,-f] variable
declare -i a=10
declare -i b=22
x=a
echo "x = $x"
sum2=$((x+b))   #first turn x to a, then turn a to 10
echo "$a +$b = $sum2"

#creat a constants variable
readonly var=1
#if u wanna change const var it will make Err
var=2
#bash :var:readonly variable

#whereis command is used to locate the binary,source,and manual page files for a command
#whatis command is used to display a short description about command. 

#change bash prompt
echo $PS1

