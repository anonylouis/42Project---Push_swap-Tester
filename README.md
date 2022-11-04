# 42Project---Push_swap-Tester
A tester for the push_swap / pushswap project from 42

## Utilisation :

- Clone this repository inside your pushswap repository
- run some test

## Commands :

- `./pushswap_tester.sh` 

to run some tests with size of 3, 5, 100 and 500 items

- `./pushswap_tester.sh [nb_test] [list size]`

to run [nb_test] of list with [list size] items !

## Personalization :

In the *pushswap_tester.sh* file you can modify the number of tests to run in basics tests

Defaults values are set to :

```
NB_TEST_5=10
NB_TEST_100=15
NB_TEST_500=15
```

If you want to try with your own checker ***(push_swap bonus)*** , or to change the pushswap directory you can also change the defaults values :

```
PUSHSWAP_DIRECTORY="../"
CHECKER="./checker_linux"
```

## Example :

![example](https://github.com/anonylouis/42Project---Push_swap-Tester/blob/master/example.png)
