#!/bin/bash

#here is located your push_swap and Makefile
PUSHSWAP_DIRECTORY="../"

#checker to use
CHECKER="./checker_linux" 

NB_TEST_5=20
NB_TEST_100=20
NB_TEST_500=20

make -C $PUSHSWAP_DIRECTORY > /dev/null

./single_test.sh $PUSHSWAP_DIRECTORY $CHECKER $NB_TEST_5 5 9 12

# printf "\n---- list already sorted : ----\n\n"
# var=""
# espace=" "
# for i in {1..250..1}
# do
# 	var1=`echo $i`
# 	var=${var}${var1}
# 	if [ $i != "250" ]
# 	then
# 		var=${var}${espace}
# 	fi
# done
# test=`./push_swap $var`
# if [ "$test" = "" ]
# then
# 	printf "OK\n"
# else
# 	printf "${Red}Failed\n"
# 	#printf "${Red}Resultat du test : ${test}\n"
# 	echo "Var = \"${var}\""
# fi

# printf "${White}\n---- list with n = 3 items ----\n\n"
# a=0
# var="1 2 3"
# test=`./push_swap $var | ./checker_linux $var`
# if [ "$test" = "OK" ]
# then
# 	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 	let "a+=1"
# else
# 	printf "${Red}Resultat du test : ${test}\n"
# 	echo "Var = \"${var}\""
# fi
# var="1 3 2"
# test=`./push_swap $var | ./checker_linux $var`
# if [ "$test" = "OK" ]
# then
# 	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 	let "a+=1"
# else
# 	printf "${Red}Resultat du test : ${test}\n"
# 	echo "Var = \"${var}\""
# fi
# var="3 2 1"
# test=`./push_swap $var | ./checker_linux $var`
# if [ "$test" = "OK" ]
# then
# 	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 	let "a+=1"
# else
# 	printf "${Red}Resultat du test : ${test}\n"
# 	echo "Var = \"${var}\""
# fi
# var="2 1 3"
# test=`./push_swap $var | ./checker_linux $var`
# if [ $test = "OK" ]
# then
# 	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 	let "a+=1"
# else
# 	printf "${Red}Resultat du test : ${test}\n"
# 	echo "Var = \"${var}\""
# fi
# var="2 3 1"
# test=`./push_swap $var | ./checker_linux $var`
# if [ "$test" = "OK" ]
# then
# 	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 	let "a+=1"
# else
# 	printf "${Red}Resultat du test : ${test}\n"
# 	echo "Var = \"${var}\""
# fi
# var="3 1 2"
# test=`./push_swap $var | ./checker_linux $var`
# if [ $test = "OK" ]
# then
# 	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 	let "a+=1"
# else
# 	printf "${Red}Resultat du test : ${test}\n"
# 	echo "Var = \"${var}\""
# fi
# printf "${White}\n------ $a / 6 test succeed ------\n\n"


# printf "\n---- list with n = 5 items ----\n\n"
# nb_success=0
# i=0
# while [ $i -lt $NB_TEST_5 ]
# do
# 	var=`echo {1..5} | tr " " "\n" | sort -R | tr "\n" " "| head --bytes -1`
# 	res=`$PUSHSWAP_DIRECTORY"push_swap" $var | ./checker_linux $var`
# 	if [ "$res" = "OK" ]
# 	then
# 		nb_cmd=`$PUSHSWAP_DIRECTORY"push_swap" ${var} | wc -l`
# 		if [ $nb_cmd -le "12" ]
# 		then
# 			printf "${Green}Number of commands : ${nb_cmd}\n${White}"
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
# printf "\n------ $nb_success / $NB_TEST_5 test passed ------\n\n"


# printf "\n---- list with n = 100 items ----\n\n"
# a=0
# for j in {1..20..1}
# do
# 	var=""
# 	espace=" "
# 	for i in {1..100..1}
# 	do
# 		var1=$((1 + RANDOM % 10000 - 5000))
# 		var=${var}${var1}
# 		if [ $i != "100" ]
# 		then
# 			var=${var}${espace}
# 		fi
# 	done
# 	#echo $var
# 	var=`echo "${var}" | tr ' ' '\n' | sort | uniq | sort -R | tr '\n' ' ' `
# 	test=`./push_swap $var | ./checker_linux $var`
# 	if [ "$test" = "OK" ]
# 	then
# 		printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 		let "a+=1"
# 	else
# 		printf "${Red}Resultat du test : ${test}\n"
# 		echo "Var = \"${var}\""
# 	fi
# done
# printf "${White}\n------ $a / $NB_TEST_5 test passed ------\n\n"

# printf "\n---- list with n = 500 items ----\n\n"
# a=0
# for j in {1..20..1}
# do
# 	var=""
# 	espace=" "
# 	for i in {1..500..1}
# 	do
# 		var1=$((1 + RANDOM % 10000 - 5000))
# 		var=${var}${var1}
# 		if [ $i != "500" ]
# 		then
# 			var=${var}${espace}
# 		fi
# 	done
# 	#echo $var
# 	var=`echo "${var}" | tr ' ' '\n' | sort | uniq | sort -R | tr '\n' ' ' `
# 	test=`./push_swap $var | ./checker_linux $var`
# 	if [ "$test" = "OK" ]
# 	then
# 		printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
# 		let "a+=1"
# 	else
# 		printf "${Red}Resultat du test : ${test}\n"
# 		echo "Var = \"${var}\""
# 	fi
# done
# printf "${White}\n------ $a / 20 test passed ------\n\n"
