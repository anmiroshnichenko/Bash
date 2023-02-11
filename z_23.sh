#!/bin/bash

function get_avg_size() {

  [ ! -d "$1" ] && echo "Directory $1 DOES NOT exists." && exit 1

  sum_size=0
  count=0

  for size in $(LC_ALL=C stat -c '%F %s' $1/* | grep 'regular file' | cut -d ' ' -f 3); do
    let sum_size=$sum_size+$size
    let count=$count+1
  done

  echo "Average file size $(($sum_size/$count))"
}

get_avg_size /home/miroshnichenko/script
