#!/bin/bash

#Echo
echo "The first argument is ${1}, it has ${#1} characters."
echo "The second argument is ${2}, it has ${#2} characters."
echo "The third argument is ${3}, it has ${#3} characters."
echo "The first charater of ${1} is ${1:0:1}"
echo "The second and third characters of ${2} is ${2:1:2}"

#Grab the Last Character
lastchar=$(( ${#3} - 1 ))

#Say the last char of the third argument
echo The last character of ${3} is ${3:${lastchar}:1}
