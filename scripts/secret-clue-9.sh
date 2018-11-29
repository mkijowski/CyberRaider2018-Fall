#!/bin/bash

message="Either you mistyped the original or you scanned the system with nmap, either way here is your secret coin: cr18{c354dce5bcee3485f863aba46db5d810}"
port=10001

while :
do
echo "$message" | nc -l $port > /dev/null
done
