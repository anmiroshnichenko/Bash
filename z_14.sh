#!/bin/bash
echo "Введите ip-адрес"
read ip
echo "Введите порт"
read port
a='telnet "$ip $port"'
echo $?
