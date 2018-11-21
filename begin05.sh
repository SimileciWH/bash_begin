#! /bin/bash


#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin05.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-19 09:31:51
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================

#The backslash work!
#the backslash alters the special meaning of the 'and', for instance. 
#it will cancel the special meaning of the next character.
#for example
file_path="/home/$USER/Public/bash_begin/begin01.sh"
echo "begin01.sh is in $file_path" #without backslash(\)
echo "begin01.sh is in \$file_path" #with the backslash the character($),has been cancel origin function
echo "begin01.sh is in \"$file_path" #with the backslash the character("),has been cancel,but the character("$")'s function still work.

#the quoting
#in bash the quoting of ' & " is different function


#the double quote("") protects everything enclosed between two double quote marks except $, ', ", \. 
#This four kind of character will work as well. 
#for instance:
num=5
echo "num = $num" # $ works as usual.
#but in single quote(''), it protect everything enclosed, and turn off the special meaning of all characters.
echo 'num = $num' # $ special meaning is turn off, single quote protect everything!!!

#the find cmd 
#syntax is find $dir -name fuzzy_file_name
#for instance
find $HOME/Public -name *.sh
echo "here is one result ..."
find $HOME/Public -name \*.sh
echo "here is two result ..."
find $HOME/Public -name "*.sh"
echo "here is three result ..."
#above this three cmd, there are all such conclusion

#sometimes we wanna to use parents process function or values.
#we can use export to extern the value or function. so child process can visit them.
#for instance ,i will creat a arg and in child process to get its value.
#next i will visit it.

#unset to cancel a variable
var=1
echo "var=$var"
unset var 
echo "var=$var"

#get user input via keyboard
#read syntax
#read [-t num] [-p "your message"] variable1 [variable2 variable3 ...]
#for instance 
read -p "input something" var2 #in cmd-line with prompt message "input something"
read var3   #in cmd-line without prompt message
#limit input time
read -t 3 -p "input something" var4 #in cmd-line with prompt message and wait only 3 sec not ever.

#use $IFS to read command together
nameservers="12 23 546"
echo "$nameservers"
read -r v1 v2 v3 <<< "$nameservers"
echo "v1=$v1, v2=$v2, v3=$v3"
