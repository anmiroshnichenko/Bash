#!/bin/bash
for a in {1..100}; do
if  [ $(( a%3 )) -eq 0 ]; then
echo $a;
fi
done
