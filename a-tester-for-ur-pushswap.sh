#!/bin/bash

Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
White='\033[0;37m'        # White

printf "\n---- list already sorted : ----\n\n"
var=""
espace=" "
for i in {1..250..1}
do
	var1=`echo $i`
	var=${var}${var1}
	if [ $i != "250" ]
	then
		var=${var}${espace}
	fi
done
test=`./push_swap $var`
if [ "$test" = "" ]
then
	printf "OK\n"
else
	printf "${Red}Failed\n"
	#printf "${Red}Resultat du test : ${test}\n"
	echo "Var = \"${var}\""
fi

printf "${White}\n---- list with n = 3 items ----\n\n"
a=0
var="1 2 3"
test=`./push_swap $var | ./checker_linux $var`
if [ "$test" = "OK" ]
then
	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
	let "a+=1"
else
	printf "${Red}Resultat du test : ${test}\n"
	echo "Var = \"${var}\""
fi
var="1 3 2"
test=`./push_swap $var | ./checker_linux $var`
if [ "$test" = "OK" ]
then
	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
	let "a+=1"
else
	printf "${Red}Resultat du test : ${test}\n"
	echo "Var = \"${var}\""
fi
var="3 2 1"
test=`./push_swap $var | ./checker_linux $var`
if [ "$test" = "OK" ]
then
	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
	let "a+=1"
else
	printf "${Red}Resultat du test : ${test}\n"
	echo "Var = \"${var}\""
fi
var="2 1 3"
test=`./push_swap $var | ./checker_linux $var`
if [ $test = "OK" ]
then
	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
	let "a+=1"
else
	printf "${Red}Resultat du test : ${test}\n"
	echo "Var = \"${var}\""
fi
var="2 3 1"
test=`./push_swap $var | ./checker_linux $var`
if [ "$test" = "OK" ]
then
	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
	let "a+=1"
else
	printf "${Red}Resultat du test : ${test}\n"
	echo "Var = \"${var}\""
fi
var="3 1 2"
test=`./push_swap $var | ./checker_linux $var`
if [ $test = "OK" ]
then
	printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
	let "a+=1"
else
	printf "${Red}Resultat du test : ${test}\n"
	echo "Var = \"${var}\""
fi
printf "${White}\n------ $a / 6 test succeed ------\n\n"


printf "\n---- list with n = 5 items ----\n\n"
a=0
for j in {1..20..1}
do
	var=""
	espace=" "
	for i in {1..5..1}
	do
		var1=$((1 + RANDOM % 3000 - 1500))
		var=${var}${var1}
		if [ $i != "10" ]
		then
			var=${var}${espace}
		fi
	done
	#echo $var
	var=`echo "${var}" | tr ' ' '\n' | sort | uniq | sort -R | tr '\n' ' ' `
	test=`./push_swap $var | ./checker_linux $var`
	if [ "$test" = "OK" ]
	then
		printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
		let "a+=1"
	else
		printf "${Red}Resultat du test : ${test}\n"
		echo "Var = \"${var}\""
	fi
done
printf "${White}\n------ $a / 100 test succeed ------\n\n"


printf "\n---- list with n = 100 items ----\n\n"
a=0
for j in {1..20..1}
do
	var=""
	espace=" "
	for i in {1..100..1}
	do
		var1=$((1 + RANDOM % 10000 - 5000))
		var=${var}${var1}
		if [ $i != "100" ]
		then
			var=${var}${espace}
		fi
	done
	#echo $var
	var=`echo "${var}" | tr ' ' '\n' | sort | uniq | sort -R | tr '\n' ' ' `
	test=`./push_swap $var | ./checker_linux $var`
	if [ "$test" = "OK" ]
	then
		printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
		let "a+=1"
	else
		printf "${Red}Resultat du test : ${test}\n"
		echo "Var = \"${var}\""
	fi
done
printf "${White}\n------ $a / 20 test succeed ------\n\n"

printf "\n---- list with n = 500 items ----\n\n"
a=0
for j in {1..20..1}
do
	var=""
	espace=" "
	for i in {1..500..1}
	do
		var1=$((1 + RANDOM % 10000 - 5000))
		var=${var}${var1}
		if [ $i != "500" ]
		then
			var=${var}${espace}
		fi
	done
	#echo $var
	var=`echo "${var}" | tr ' ' '\n' | sort | uniq | sort -R | tr '\n' ' ' `
	test=`./push_swap $var | ./checker_linux $var`
	if [ "$test" = "OK" ]
	then
		printf "${Green}Nombre de commandes : $(./push_swap ${var} | wc -l)\n"
		let "a+=1"
	else
		printf "${Red}Resultat du test : ${test}\n"
		echo "Var = \"${var}\""
	fi
done
printf "${White}\n------ $a / 20 test succeed ------\n\n"
