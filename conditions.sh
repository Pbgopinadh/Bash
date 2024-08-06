#!/bin/bash

number=$1

if [ $number = 0 ] ; then 

    echo "shutting down the system" # intendation matters and sytanx matters

elif [ $number = 1 ] ; then 

    echo "starting the system"

elif [ $number = 2 ] ; then 

    echo "safe mode"

elif [ $number = 3 ] ; then

    echo "GUI mode"

elif [ $number = 4 ] ; then

    echo "undefined mode for debugging" 

else 

    echo "enter a valid option from 0 to 4"

fi # this is how to mention the end of the condition if - start fi - end.



