Bash scripting for automation.

Automation is very easy as we just have to copy and paste the entire commands in a single file and later execute with bash <script-name> its advisable if the bash script has .sh as extension even though it doesnt matter.

Function requirement (FR) : the logic of the code.
Non - functional requiremnet (NFR)

NFR:
1.) the code should be dry (the code/code pattern shouldn't be repeated more than once) if yes then we have to effciently use the code multiple time. lets say funtion/procedures etc.
2.) username and password shouldn't be hardcoded as it is aganist data or security compliance.
3.) the code should run the same or produce the same results when it ran multiple times.

we should follow above 3 when making to create a automation so it is standard, reliable and efficent.

Bash sytanx in the bash script:

#!/bin/bash --> this is called shebang and it is first line of the code. so basically we are telling the script which intrpreter to use.
it can /bin/python for python scripts ,  /bin/sh and many more. only the first line of the code can be started with # and after that the intrepreter will consider it as comment.

echo - printing a message 

how can we print a message with multiple lines.

echo -e 'hi /nhello' # /n - next line.
echo -e 'hi /thello' #/t - tab space. 

we can even use color schema to the words to indicate something is error and others are warning using color schema where red is error and yellow is warning.

color: echo -e "\e[color_number_m content \e[0m" -> this will add color to the text.4 (foreground) we can even add the background color to a text.  (which is not important right now)

Variables: varaibles are something that hold a value.

In linux/shell, there are no data types by defauly everthing is a string. so this can be considered as both advantage and disadvantage.

so how to print a variable we have to use dollar

echo "this is how to print a vairable $a" vaibles can also be written like this $(a), ${a}
echo -e "this is how to to print a printed variable \e[32m $a \e[0m"

#! /bin/bash
echo -e "\e[51m this is a color combination to the foreground \e[0m"
echo -e "\e[31m,51m this is a color combination to the foreground and background \e[0m"
echo -e "this is a color combination to the foreground and \e[51m background \e[0m"

we have to follow a standard alphabet style case. normally there as below

STUDENT_NAMES 
studentNames (camelCase)
StudentNames (SnakeCase)

when printing a undeclared variable the bash/shell doesnt throw a error instead it consider it as null so we have to keep this in mind.
bash will consider the undeclared variable as null.

Arguments - arguments helps to retreive the values from the command line.

