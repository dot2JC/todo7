#!/bin/bash

#loginx.sh gets a username and password from user and validates

if [ ${#} -eq 2 ] #arg check
then
	if [ ${2:1:1} = "x" ] #check if second char is x
	then
		if [ ${1} = "bob" ] #name check bob
		then
			if [ ${2} = "bxpwob" ] #pass check
			then
				exit 0
			else
				exit 36
			fi
		elif [ ${1} = "betty" ] #name check betty
		then
			if [ ${2} = "bxpwetty" ] #pass check
			then
				exit 0
			else
				exit 36
			fi
		else
			exit 35
		fi
	else
		exit 34
	fi
else
	exit 33
fi

