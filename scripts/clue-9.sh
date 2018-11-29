#!/bin/bash

message="Good work! This coin is cr18{c193497a1a06b2c72230e6146ff47080}"
port=10000

while :
do
echo "$message" | nc -l $port > /dev/null
done
