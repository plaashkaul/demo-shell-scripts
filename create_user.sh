#!/bin/bash
<<help
This is a shell script to create users
help

function user_create {

echo "------------: Creation of User Started :-------------"

read -p "enter the username:" username

read -p "enter the password:" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username"

echo "-------------: Creation of User Completed :--------------"

}

function user_del {

sudo userdel $username

echo "-------------: Deletion of User Completed :---------------"
}

function user_count {

if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0];
then
	echo "as wc is 0 the user is deleted"
else
	echo "user is not deleted"
fi

}

user_create
user_del
user_count

