#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin07.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-20 10:47:50
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================

#bash structure language constructs

#for instance,
read -p "input two integer number a,b" a b
if [ $((a<=b)) -eq 1 ]
then 
	echo -e "$a <= $b \n"
else
	echo -e "$a > $b \n"
fi

#test cmd. test cmd is used to check file types and compare values. Test is used in conditional execution.
#It is used for:
#File attributes comparisons
#Perform string comparisons.
#Arithmetic comparisons.

#test syntax:
#test condition [ && true-cmd [ || false-cmd] ]

test 5 > 2 && echo Yes
test 5 < 2 && echo No || echo Yes
test 5 < 2 || echo Yes
test 5 -lt 2 && echo Yes || echo No
