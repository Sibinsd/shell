#!/bin/bash 
read -p "Enter username : " uname
grep $uname /etc/passwd
if [ $? -eq 0 ]
then
	echo "$uname already exist"
	read -p  " Enter password : " pass
	echo "$pass" | passwd --stdin $uname
	echo "passsword changed successfully"

else
	echo "$uname doesn't exist"
fi





