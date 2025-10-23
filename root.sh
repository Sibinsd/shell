#!/bin/bash
if [ $EUID -eq 0 ]
then
	echo "Permission Granted"
else
	echo "Permission Denied"
fi
