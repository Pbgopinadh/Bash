#!/bin/bash

#operators on numbers

a=$1
b=$2

if [ $a -eq $b ] ; then
    echo 'they are equal'

elif [ $a -nq $b ] ; then
    echo 'they are not equal'

elif [ $a -lt $b ] ; then
    echo "$a is less"

elif [ $a -le $b ] ; then
   echo "$a is less than equal to $b"

elif [ $a -gt $b ] ; then
    echo "$b is less than $a"   

elif [ $a -ge $b ] ; then
    echo "$b is less than equal to $a"

fi

if [-z "$a"]; then
echo "variable is empty"
fi

if [-n "$a"]; then
echo "variable is not empty"
fi

if [-e "/home/ec2-user/DevOps/function.sh"]; then
echo "variable is not empty"
fi

if [ -f "/home/ec2-user/DevOps/function.sh" ]; then
  echo "File is a regular file"
fi

if [ -d "/home/ec2-user/DevOps" ]; then
  echo "It is a directory"
fi

