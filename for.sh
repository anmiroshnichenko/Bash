#!/bin/bash
for((i=1;i<100;i+=10))
do
        echo $i
done;

for item in coffe tea drink; do
        echo "we have a $item"
done

for file in *; do
#       echo $file
        stat $file
done
