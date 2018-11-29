#!/bin/bash

keys=./keys
port=1337

for i in `cat $keys`;
do
echo "$i" | nc -l $port > /dev/null
done
