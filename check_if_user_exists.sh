#!/bin/bash

<<info

This shell scripts checks if user exists

info

read -p "Enter the username I wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count -eq 0 ];
then
	echo "user does not exist"
else
	echo "user exists"
fi




