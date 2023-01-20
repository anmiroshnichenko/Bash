#!/bin/bash
division () {
  if [[ $2 -ne 0 ]]; then
    echo "$1/$2 = $(($1/$2))"
  else
    echo "division by zero"
   fi
}
division 15 5
division 4 2
division 3 0


args () {
 echo $@
 for item in $@; do
  echo $item
 done
}
args 1 4 5
args 5 7 8 9 10

read_args () {
 echo $@
 for item in $@; do
  echo $item
 done
}
read_args param1 param2 param3 param4


currentdate () {
 date
 echo "OK"
 uptime
 echo "OK2"
}
currentdate
currentdate
currentdate
