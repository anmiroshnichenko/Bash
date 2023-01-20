#!/bin/bash
division () {
  if [[ $2 -ne 0 ]]; then
    echo "$1/$2 = $(($1/$2))"
   # return 0
  else
    echo "division by zero"
    return 1 # команду выхода из функции  return используем для досрочного выхода из функции
   fi
}
division 4 2
echo $?
division 3 0
echo $?

division () {
  a=$1
  b=$2
  return 1 # команду выхода из функции  return используем для досрочного выхода из функции
  if [[ $b -ne 0 ]]; then
    echo "$1/$2 = $(($1/$2))"
  else
    echo "division by zero"
  fi
}
division 4 2
echo $?
division 3 0
echo $?


division () {
  a=$1
  b=$2
  if [[ $b -ne 0 ]]; then
    echo "$1/$2 = $(($1/$2))"
  else
    echo "division by zero"
    exit 11 #команду для выхода из скрипта exit используем для выхода из скрипта  
  fi
}
division 4 2
echo $?
division 3 0
echo $?
division 5 2
echo $?

#!/bin/bash
exit 11  #команду для выхода из скрипта exit используем для выхода  в самом начале 
division () {
  a=$1
  b=$2
  if [[ $b -ne 0 ]]; then
    echo "$1/$2 = $(($1/$2))"
  else
    echo "division by zero"
   # exit 11
  fi
}
division 4 2
echo $?
division 3 0
echo $?
division 5 2
echo $?
