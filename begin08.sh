#! /bin/bash 
#================================================================
#   Copyright (C) 2018 * Ltd. All rights reserved.
#
#   File name   : begin08.sh
#   Author      : simileciWH
#   Email       : simileci.wh.32@outlook.com
#   Created date: 2018-11-22 08:57:58
#   Description : code is far away from bugs with the god animal protecting
#
#================================================================


# if no command line arg given
# set rental to Unknown
if [ -z $1 ]
then
	rental="*** Unknown vehicle ***"
elif [ -n $1 ]
then
	# otherwise make first arg as a rental
	rental=$1
fi
# use case statement to make decision for rental
case $rental in
	"car") echo "For $rental rental is Rs.20 per k/m.";;
	"van") echo "For $rental rental is Rs.10 per k/m.";;
	"jeep") echo "For $rental rental is Rs.5 per k/m.";;
	"bicycle") echo "For $rental rental 20 paisa per k/m.";;
	"enfield") echo "For $rental rental Rs.3 per k/m.";;
	"thunderbird") echo "For $rental rental Rs.5 per k/m.";;
	*) echo "Sorry, I can not get a $rental rental for you!";;
esac

for (( i = 1; i <= 8; i++ )) ### Outer for
do
	for (( j = 1 ; j <= 8; j++ )) ### Inner
	do
		total=$(( $i + $j))
		# total
		tmp=$(( $total % 2)) # modulus
		# Find out odd and even number and
		# alternating colors using odd and
		if [ $tmp -eq 0 ];
		then
			echo -e -n "\033[47m "
		else
			echo -e -n "\033[40m "
		fi
	done
	echo "" #### print the new line ###
done

