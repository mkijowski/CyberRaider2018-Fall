#!/bin/bash

if [ ! -z "$1" ] && [ -f $1 ]; then
    echo "Using $1 as dictionary"
    dictionary=$1
else
    echo "Dictionary file does not exist or was not passed,
    attempting to use /usr/share/dict/american-english"
    dictionary=/usr/share/dict/american-english
fi

for i in `cat $dictionary`; do
    sum=`echo "$i" | md5sum -`
    echo "$sum $i" 
done
