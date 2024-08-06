Bash scripting for automation.

Automation is very easy as we just have to copy and paste the entire commands in a single file and later execute with bash <script-name> its advisable if the bash script has .sh as extension even though it doesnt matter.

Function requirement (FR) : the logic of the code.
Non - functional requiremnet (NFR)

NFR:
1.) the code should be dry (the code/code pattern shouldn't be repeated more than once) if yes then we have to effciently use the code multiple time. lets say funtion/procedures etc.
2.) username and password shouldn't be hardcoded as it is aganist data or security compliance.
3.) the code should run the same or produce the same results when it ran multiple times.

we should follow above 3 when creating a automation so it is standard, reliable and efficent.

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

Here's an error -> so when i try to git pull in a directory whose owner is different from the user i am currently git pulling it throws an error stating that dubious ownership. this is beacuse the owner of the directory and user that is trying to git pull and make changes are different.

so to resolve it i changed the owner of the git repo directory from root to ec2-user.

there are special varaibles those are meant to retrieve some default values from the system.

for example: $0 - this argument/special variable contains the script that is running.

$* - this shows all the arguments present in the script.
$# - this shows no of arguments present in the script.

chmod 755 /filepath -> this is used to modify the permission of the script
chown -R (recursive for directory) owner:group /filepath -> this is used to change the owner and group asscioated with that file/directory.

exit codes $? - gives the exit code of the 

In shell scripting, the exit code provided by $? reflects the exit status of the most recently executed command or pipeline, not necessarily the entire script.

so exit codes are mainly useful in debugging a program ->  0 - 255 are the range of the code.

                                                        0 - success of the command 

                                                        1 - 125 -> some failure of the commands

                                                        125 + -> system failure.

so in as400 we use the job description and library list which are specific to user. 
In linux. for example if we want a startup script for a specific user -> there is a method.
so for example lets say gp alias for git pull will only be valid for that session and if we go to a new session it no longers work. (this is just an example)

so there is a file which is hiddedn in our home directory [.bash_profile] in this we can provide the start script or commands that should execute when ever a new session is started. so by editing this using a text editor we can make use this more.

so i used the below script as my startup script so that the directory on session start will be git directory and git pull will happen to download latest data from the remote repo. this is how we can use the .bash_profile effectively.

--------------------------------------------------------------------------------------------------------------------------

# User specific environment and startup programs
sudo alias gp='git pull'
echo "Hi sir welcome home lets get started"
cd /home/ec2-user/DevOps
git pull

--------------------------------------------------------------------------------------------------------------------------

There are 4 types of commands in RHEL/Linux

1. Binary - commands that are present in /usr/bin or /usr/sbin. or user commands are binary commands. we can see by using the type command
2. aliases - alias is the anothername given to a command for our comfort.
3. shell built in command - these commands comes with the shell or os. where as the binary are like applicationm types. we can see by using the type command.
4. Functions - like any other programming language a function is a set to code/ groups of commands with logic which can be re-used.

Also $(command) - output of the command will be displayed. so $(uptime) - this is how we see the runtime $() - executes the command and provide us the output.

--------------------------------------------------------------------------------------------------------------------------

# Re-directors:

In simple terms, a redirector in a shell is a tool that lets you control where the output of a command goes or where it comes from.

--------------------------------------------------------------------------------------------------------------------------

# output re-directors:
>: Redirects the output of a command to a file, overwriting the file if it already exists.
Example: echo "Hello" > file.txt (writes "Hello" to file.txt, replacing any existing content).

>>: Redirects the output to a file, appending to the file if it already exists.
Example: echo "World" >> file.txt (adds "World" to the end of file.txt).

--------------------------------------------------------------------------------------------------------------------------

# Error Redirector (2> and 2>>):
2>: Redirects error messages to a file, overwriting the file if it already exists.
Example: ls non_existing_file 2> error.txt (writes error messages to error.txt).

2>>: Redirects error messages to a file, appending them if the file already exists.
Example: ls non_existing_file 2>> error.txt (adds error messages to the end of error.txt).

--------------------------------------------------------------------------------------------------------------------------

# Combined Redirector (&> and &>>):
&>: Redirects both standard output and errors to a file, overwriting the file if it exists.
Example: command &> all_output.txt (writes both output and errors to all_output.txt).

&>>: Redirects both standard output and errors to a file, appending to the file if it exists.
Example: command &>> all_output.txt (adds both output and errors to the end of all_output.txt).

--------------------------------------------------------------------------------------------------------------------------

# Input Redirector (<):
<: Redirects input from a file to a command. gives inputs from a file to a command.
Example: sort < input.txt (reads from input.txt and sorts its content).

--------------------------------------------------------------------------------------------------------------------------

# Condtions:

like any programming language the conditions are same.

if, elif (else if) , else


### Expressions are categorized in to three types and based on the expression, we need to use operators
```
    1. Numbers
    2. Strings
    3. Files
```

# Operators on numbers:
```
    -eq , -ne , -gt, -ge, -lt, -le

    [ 1 -eq 1 ] 
    [ 1 -ne 1 ]
```

# Operators on Strings:

    = , == , !=

    [ abc = abc ]

    -z , -n 

    [ -z "$var" ] -> This is true if var is not having any data
    [ -n "$var" ] _> This is true if var is having any data

    -z and -n are inverse proportional options


# Operators on files:

    Lot of operators are available and you can check them using man pages of bash 

    [ -e file ] -> True of file exists.    

    [ -f file ] -> True of file exists and file is a regular file 

    [ -d xyz ]  -> True if file exists and it is a directory

    ### Explore the file types, There are 7 types on files in Linux.

----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Loops: very important concept








