#!/bin/bash
read -p "enter username : " uname
grep $uname /etc/passwd
if [ $? -eq 0 ]
then
        echo "user $uname already exist"
else
        echo "username doesn't exist"
fi

read -p "enter UID : " uid
read -p "enter gecose (no spaces):" ge
read -p "enter shell:" shell
read -p "do this user need sudo permission(yes or no ) :" sudo 
if [ $sudo == yes ]
then 
	useradd -u $uid -c $ge -s $shell -G wheel $uname 
else 
         useradd -u $uid -c $ge -s $shell $uname
fi

echo "user created suucesssfully"

