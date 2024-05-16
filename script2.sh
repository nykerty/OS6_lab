#!/bin/bash

read -p "URL: " url
regex="^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$"

if [[ $url =~ $regex ]]; then
     	echo "URL is correct."
else
	echo "URL is incorrect."
fi
