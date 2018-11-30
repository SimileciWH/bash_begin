#! /bin/bash


#__Filename__ : begin09.sh
#__Auther__   : simileciwh
#Email        : simileci.wh.32@outlook.com
#Created date : 2018-11-23 14:48:09
# code is far away from bugs with the god animal protecting
#    I love animals. I have a lovely doggy!
#              ┏┓     ┏┓
#             ┏┛┻━━━━━┛┻┓
#             ┃    ☃    ┃
#             ┃  ┳┛  ┗┳ ┃
#             ┃     ┻   ┃
#             ┗━┓     ┏━┛
#               ┃     ┗━━━┓
#               ┃   神兽保佑  ┣┓
#               ┃   永无BUG!   ┏┛
#               ┗┓┓┏━━┳┓┏┛
#                ┃┫┫  ┃┫┫
#                ┗┻┛  ┗┻┛


read -p "Please input your age, i will tell you whether you can drive a car! age: " age
if [ ${age} -ge 18 ]
then
	echo "you can drive a car!"
else
	if [ ${age} -lt 10 ]
	then 
		echo "your first thing is to grow up healthy!"
	else 
		echo "it is too early to learn skills of drive a car!"
	fi
fi

[ 5 == 5 ] && echo "Yes" || echo "No"
[ 5 == 15 ] && echo "Yes" || echo "No"
[ 5 != 10 ] && echo "Yes" || echo "No"
[ -f /etc/resolv.conf ] && echo "File /etc/resolv.conf found." || echo
"File /etc/resolv.conf not found."
[ -f /etc/resolv1.conf ] && echo "File /etc/resolv.conf found." || echo
"File /etc/resolv.conf not found."

read -s -p "input your passward" password
echo 
if test "${password}" != "simileciwh"; then 
	echo "wrong password!"
else 
	echo "Hello, to log in!"
fi

read -s -p "input your passward" password
echo 
if test -z $password; then 
	echo "your input is empty!"
else 
	if test "${password}" != "simileciwh"; then 
		echo "wrong password!"
	else 
		echo "Hello, to log in!"
	fi
fi
