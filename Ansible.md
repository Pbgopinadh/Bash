Ansible:

# why better than shell scripting:

1. it is declrative 
2. it is heterogenous -> ansible code can execute and provide us the output on all flavours of linux
3. at scale, this works well.
4. we can parallely confige n no of servers without logging into them.
5. the script doesnt required to be locally stored on all servers.
6. Agentless - there is no need of Agent on every servers.
7. Ansible works on SSH.

## Ansible push  
## Ansible pull 

so what do we need to make sure that ansible works without any issues:

1. common creditials across all the servers to make sure that ansible can use same set of creds for every server.
2. make sure to ansible server can communicate to all the servers that needs configuation management.

backend of ansible is python which means that we have to install python inorder to use the python

to see the python version just start python using the command. -> python --version shows the current intalled python version.

PIP -> is the python package manager. 

sudo pip3.11 install ansible {for specific pyhton version virtual environment} or sudo dnf install ansible {for installing the ansible from the configured repo}


Pypi - go to google pyhton package index and search for ansible where you will see the latest ansible version and also the pre-requesities for the ansible.

Ansible core and ansible

ansible core 02.17 means ansible 10 version 


# see more on this:

Creating and Using Virtual Environments:

If you're working with multiple Python versions, using virtual environments can help:
