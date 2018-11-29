#!/bin/bash

message="hello world!"
port=10000

while :
do
echo "$message" | nc -l $port
done
