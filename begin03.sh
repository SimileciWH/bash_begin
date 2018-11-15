#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin03.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-15 15:30:20
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================


date & time .
clear
echo "Hello, $USER"
echo -e "Today is \c ";date
echo -e "Number of user login : \c" ; who | wc -l
echo "Calender"
cal
printf "$HOME\n"
printf "string %s\n" $HOME

exit 0
