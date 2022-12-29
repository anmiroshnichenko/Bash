#!/bin/bash
echo " ip address ?"
read ip
echo " port ? "
read port
a=$(nc -nz $ip $port)
if [[ $? -eq 0 ]]; then
        echo "$ip:$port open" >> /tmp/port.log; echo "$ip:$port open"
else
        echo "$ip:$port closed" >>/tmp/port.log; echo "$ip:$port closed"
fi;
