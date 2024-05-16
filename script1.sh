#!/bin/bash

echo "INPUT STRING"
read input

echo "INPUT PATTERN"
read pattern

echo "$input" | grep "$pattern"
status=$?

if [ $status -eq 0 ]; then
	echo "FOUND" >&1
elif [ $status -eq 1 ]; then
	echo "NOT FOUND" >&2
else
	echo "ERRRRRROR" >&2
fi

exit $status
