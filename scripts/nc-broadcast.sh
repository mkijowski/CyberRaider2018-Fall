#!/bin/bash

message="hello world!"

echo "$message" | nc -l 10000
