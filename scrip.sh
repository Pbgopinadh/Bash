#! /bin/bash

name=$1
Age=$2

echo -e "Hi!, My name is $name Nice to meet you \nmy age is $Age"
echo "$(whoami) is the one executing this $0 script".

echo "the arguments are $*"
echo "the arguments are $#"
echo "the exit code is $?"
echo "the arguments are $@"

echo -e "\e[32m this is a warning \e[0m"
