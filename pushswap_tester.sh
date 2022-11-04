#!/bin/bash

#here is located your push_swap and Makefile
PUSHSWAP_DIRECTORY="../"

#checker to use
CHECKER="./checker_linux" 

#all test defaults values
NB_TEST_5=20
NB_TEST_100=20
NB_TEST_500=20

make -C $PUSHSWAP_DIRECTORY > /dev/null

if [ $# -eq "0" ]
then
	./single_test.sh $PUSHSWAP_DIRECTORY $CHECKER 0 1
	./single_test.sh $PUSHSWAP_DIRECTORY $CHECKER 0 3
	./single_test.sh $PUSHSWAP_DIRECTORY $CHECKER $NB_TEST_5 5 12
	./single_test.sh $PUSHSWAP_DIRECTORY $CHECKER $NB_TEST_100 100 700 1100
	./single_test.sh $PUSHSWAP_DIRECTORY $CHECKER $NB_TEST_500 500 5500 8500
elif [ $# -eq "2" ]
then
	./single_test.sh $PUSHSWAP_DIRECTORY $CHECKER $1 $2
else
	echo "Bad Utilisation"
	echo "./pushswap_tester.sh to run all test"
	echo "./pushswap_tester.sh [nb_test] [list size] to run a personalise test"
fi
