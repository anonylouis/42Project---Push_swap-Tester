#!/bin/bash

# [$1] = $PUSHSWAP_DIRECTORY
# [$2] = $CHECKER
# [$3] = number of test to make
# [$4] = number of items in list
# OPTIONAL
# [$5] = number of moves to valid (green)
# [$6] = number of moves to partially validate (yellow)

Red='\033[0;31m'
Green='\033[0;32m'
White='\033[0;37m'
Yellow='\033[1;33m'

nb_success=0
i=0
echo `echo {1..$4}`
# while [ $i -lt $3 ]
# do
# 	var=`echo {1..$4} | tr " " "\n" | sort -R | tr "\n" " "| head --bytes -1`
# 	res=`$1"push_swap" $var | $2 $var`
# 	if [ "$res" = "OK" ]
# 	then
# 		nb_cmd=`$1"push_swap" ${var} | wc -l`
# 		if [ $# -eq "4" ]
# 		then
# 			printf "${Green}Number of commands : ${nb_cmd}\n${White}"
# 			let "nb_success+=1"
# 		elif [ $# -ge "5" -a $nb_cmd -le $5]
# 		then
# 			printf "${Green}Number of commands : ${nb_cmd}\n${White}"
# 			let "nb_success+=1"
# 		elif [ $# -eq "6" -a $nb_cmd -le $6]
# 		then
# 			printf "${Yellow}Number of commands : ${nb_cmd}\n${White}"
# 			let "nb_success+=1"
# 		else
# 			printf "${Red}Number of commands : ${nb_cmd}\n${White}"
# 		fi
# 	else
# 		printf "${Red}Resultat du test : ${res}\n${White}"
# 		echo "Var = \"${var}\""
# 	fi
# 	let "i+=1"
# done
# printf "\n------ $nb_success / $3 test passed ------\n\n"