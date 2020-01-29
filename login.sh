#!/bin/bash

#login.sh calls another script and uses the listed exit codes

#c=$(./loginx.sh "$@")
./loginx.sh ${@}
code=$?

if [ $code -eq 0 ]
then
	echo "loginx.sh executed and returned with exit code $code."
	echo "Login Successful."
  	exit 0 
elif [ $code -eq 33 ]
then
 	echo "loginx.sh executed and returned with exit code $code."
  	echo "Invalid number of arguments."
  	exit 33
elif [ $code -eq 34 ]
then
  	echo "loginx.sh executed and returned with exit code $code."
  	echo "Invalid password format."
  	exit 34
elif [ $code -eq 35 ]
then
  	echo "loginx.sh executed and returned with exit code $code."
  	echo "Invalid username."
  	exit 35
elif [ $code -eq 36 ]
then
  	echo "loginx.sh executed and returned with exit code $code."
  	echo "Invalid password."
  	exit 36
else
  	echo "loginx.sh executed and returned with exit code $code."
  	echo "That exit code is not on my list."
  	exit 37
fi
