#!/bin/bash

# loops

# variation of using for loop

for i in 1 2 3 4 5 6 
do #do - start of the expression space
    echo "the current value of i is $i"
done #done - end of the expression space

for i in {7..20} # instead of providing the numbers manually the syntax is 1..5 means 1 to 5
do
    echo "the current value of i is $i"
done

for i in /home/ec2-user/* # this is how to iterate though a directory path
do
    echo "the current directory is $i"
done

