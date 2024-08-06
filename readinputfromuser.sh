#! /bin/bash

# this script is to read a input from the user and inlcude it in the code.

echo "Hello, please provide your details below"

read -p "A:" A
read -p "B:" B
read -p "tell me your name:" Name
read -p "tell me your Age:" Age

echo "Hi $Name congrats, welcome to adulthood with an age of $Age"

#arthimetic operations

echo "the sum of A and B = $((A+B))"
echo "the Subtract of A and B = $((A-B))"
echo "the multiply of A and B = $((A*B))"
echo "the division of A and B = $((A/B))"

