#!/bin/bash

# loops

# variation of using for loop

for i in 1 2 3 4 5 6 
do
    echo "the current value of i is $i"
done

for i in {7..20}
do
    echo "the current value of i is $i"
done

for i in /home/ec2-user/*
do
    echo "the current directory is $i"
done

