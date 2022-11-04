#!/bin/bash

# [$1] = $PUSHSWAP_DIRECTORY
# [$2] = $CHECKER
# [$3] = number of test to make
# [$4] = number of items in list
# OPTIONAL
# [$5] = number of moves to valid (green)
# [$6] = number of moves to partially validate (yellow)

# NOTE :
# if $4 == 1, i'm testing if the program returns nothing when the list is already sorted
# if $4 == 2, the 2 differents tests are made
# if $4 == 3, the 6 differents tests are made


Red='\033[0;31m'
Green='\033[0;32m'
White='\033[0;37m'
Yellow='\033[0;33m'


if [ $4 -eq "1" ]
then
	printf -- "------ list already sorted : ------\n"
	test1=`echo $(seq 1 $(echo $((1 + RANDOM % 100))))`
	test2=`echo $(seq 1 $(echo $((1 + RANDOM % 100))))`
	res1=`$1"push_swap" $test1`
	res2=`$1"push_swap" $test2`
	if [ "$res1" = "" -a "$res2" = "" ]
	then
		printf -- "${Green}Test PASSED\n\n${White}"
		exit 1
	else
		if [ "$res1" != "" ]; then printf -- "${Red} list = $test1\n"; fi
		if [ "$res2" != "" ]; then printf -- "${Red} list = $test2\n"; fi
		printf -- "${Red}Test FAILED\n\n${White}"
		exit 0
	fi
fi

printf -- "------ list with n = $4 items ------\n"

if [ $4 -eq "3" ]
then
	nb_success=1
	res1=`$1"push_swap" "1 2 3"| $2 "1 2 3"`
	res2=`$1"push_swap" "1 3 2"| $2 "1 3 2"`
	res3=`$1"push_swap" "2 1 3"| $2 "2 1 3"`
	res4=`$1"push_swap" "2 3 1"| $2 "2 3 1"`
	res5=`$1"push_swap" "3 1 2"| $2 "3 1 2"`
	res6=`$1"push_swap" "3 2 1"| $2 "3 2 1"`
	if [ "$res1" = "OK" -a "$res2" = "OK" -a "$res3" = "OK" -a "$res4" = "OK" -a "$res5" = "OK" -a "$res6" = "OK" ]
	then
		nb_cmd1=`$1"push_swap" "1 2 3"| wc -l`
		nb_cmd2=`$1"push_swap" "1 3 2"| wc -l`
		nb_cmd3=`$1"push_swap" "2 1 3"| wc -l`
		nb_cmd4=`$1"push_swap" "2 3 1"| wc -l`
		nb_cmd5=`$1"push_swap" "3 1 2"| wc -l`
		nb_cmd6=`$1"push_swap" "3 2 1"| wc -l`
		if [ $nb_cmd1 -le "3" ]; then printf "${Green}Number of commands : ${nb_cmd1}\n${White}"; else printf "${Red}Number of commands : ${nb_cmd1}\n${White}"; let "nb_success=0"; fi
		if [ $nb_cmd2 -le "3" ]; then printf "${Green}Number of commands : ${nb_cmd2}\n${White}"; else printf "${Red}Number of commands : ${nb_cmd2}\n${White}"; let "nb_success=0"; fi
		if [ $nb_cmd3 -le "3" ]; then printf "${Green}Number of commands : ${nb_cmd3}\n${White}"; else printf "${Red}Number of commands : ${nb_cmd3}\n${White}"; let "nb_success=0"; fi
		if [ $nb_cmd4 -le "3" ]; then printf "${Green}Number of commands : ${nb_cmd4}\n${White}"; else printf "${Red}Number of commands : ${nb_cmd4}\n${White}"; let "nb_success=0"; fi
		if [ $nb_cmd5 -le "3" ]; then printf "${Green}Number of commands : ${nb_cmd5}\n${White}"; else printf "${Red}Number of commands : ${nb_cmd5}\n${White}"; let "nb_success=0"; fi
		if [ $nb_cmd6 -le "3" ]; then printf "${Green}Number of commands : ${nb_cmd6}\n${White}"; else printf "${Red}Number of commands : ${nb_cmd6}\n${White}"; let "nb_success=0"; fi
	else
		nb_success=0
		if [ $res1 = "OK" ]; then printf "${Green}push_swap 1 2 3 = $res1\n${White}"; else printf "${Red}push_swap 1 2 3 = $res1\n${White}"; fi
		if [ $res2 = "OK" ]; then printf "${Green}push_swap 1 2 3 = $res2\n${White}"; else printf "${Red}push_swap 1 2 3 = $res2\n${White}"; fi
		if [ $res3 = "OK" ]; then printf "${Green}push_swap 1 2 3 = $res3\n${White}"; else printf "${Red}push_swap 1 2 3 = $res3\n${White}"; fi
		if [ $res4 = "OK" ]; then printf "${Green}push_swap 1 2 3 = $res4\n${White}"; else printf "${Red}push_swap 1 2 3 = $res4\n${White}"; fi
		if [ $res5 = "OK" ]; then printf "${Green}push_swap 1 2 3 = $res5\n${White}"; else printf "${Red}push_swap 1 2 3 = $res5\n${White}"; fi
		if [ $res6 = "OK" ]; then printf "${Green}push_swap 1 2 3 = $res6\n${White}"; else printf "${Red}push_swap 1 2 3 = $res6\n${White}"; fi
	fi
	if [ $nb_success -eq "1" ]
		then
			printf -- "${Green}Test PASSED\n\n${White}"
		else
			printf -- "${Red}Test FAILED\n\n${White}"
	fi
	exit $nb_success
fi

nb_success=0
i=0
while [ $i -lt $3 ]
do
	var=`echo $(seq 1 $4) | tr " " "\n" | sort -R | tr "\n" " "| head --bytes -1`
	res=`$1"push_swap" $var | $2 $var`
	if [ "$res" = "OK" ]
	then
		nb_cmd=`$1"push_swap" ${var} | wc -l`
		if [ $# -eq "4" ]
		then
			printf "${Green}Number of commands : ${nb_cmd}\n${White}"
			let "nb_success+=1"
		elif [ $# -ge "5" -a $nb_cmd -le $5 ]
		then
			printf "${Green}Number of commands : ${nb_cmd}\n${White}"
			let "nb_success+=1"
		elif [ $# -eq "6" -a $nb_cmd -le $6 ]
		then
			printf "${Yellow}Number of commands : ${nb_cmd}\n${White}"
			let "nb_success+=1"
		else
			printf "${Red}Number of commands : ${nb_cmd}\n${White}"
		fi
	else
		printf "${Red}Resultat du test : ${res}\n${White}"
		echo "Var = \"${var}\""
	fi
	let "i+=1"
done
printf -- "------ $nb_success / $3 test passed ------\n\n"