#!/bin/bash
#Are there 3 arguments being passed or not
if [ $# -eq 3 ];
 then
  echo "Ok, got numbers $1, $2, $3."
#Check which are biggest and smallest
 if [ $1 -gt $2 ]
  then
   big=$1
   small=$2
 else
   big=$2
   small=$1
 fi
 if [ $3 -gt $big ]
  then
   big=$3
 elif [ $3 -lt $small ]
  then
   small=$3
 fi
#Check if the biggest and smallest are even/odd
 if (( $small % 2 ))
  then
   smallcheck=odd
 else
   smallcheck=even
 fi
 if (( $big % 2 ))
  then
   bigcheck=odd
 else
   bigcheck=even
 fi
#check if all 3 arguments are the same number
 if [  $1 -eq $2 ] && [ $1 -eq $3 ];
  then
   echo "The numbers are all the same."
   echo "The number $big is $bigcheck"
   echo "Exiting, code 0"
   exit 0
 else
  echo "The smallest number is $small"
  echo "The number $small is $smallcheck"
  echo ""
  echo "The largest number is $big"
  echo "The number $big is $bigcheck"
  echo "Exiting, code 0"
  exit 0
 fi
#if more or less than 3 arguments are passed ERROR!!!!
else
 echo "Usage error expected 3 numbers, got $#"
 echo "Exiting, code 33"
 exit 33
fi
 









