Ansible:

# why better than shell scripting:

1. it is declrative 
2. it is heterogenous -> ansible code can execute and provide us the output on all flavours of linux
3. at scale, this works well.
4. we can parallely confige n no of servers without logging into them.
5. the script doesnt required to be locally stored on all servers.
6. Agentless - there is no need of Agent on every servers.
7. Ansible works on SSH.

## Ansible push  - pushing from 1 base machine to all other servers
## Ansible pull - servers pulling from github (this is appicable for dynamic scaling infrastcuture.)

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

rpm -qa | grep python - to see the version of python that are installed and every installed version of python will have its own command exmaple python - default intrpretuer taken by the system, python3.11 , python3.12 so each version will have its own command with version number. 

we can change the default intrepter of the python command to over required version.

# see more on this:

Creating and Using Virtual Environments:

If you're working with multiple Python versions, using virtual environments can help:

-----------------------------------------------------------------------------------------------------------------------------------

# Ansible inventory:

Ansible inventory contains all the servers for which we are going to do configuaration management.

we can even send any commands to node servers and get the results either manually( sending 1 command at a time ) or by automatic (playbook: instruction return in yaml language) -> playbook are waht we use for configuration management mostly.

Ansible modules (upto ansible 2.9) and collections (terminology from 2.9 to present and future.)

Ansible Modules: Similar to Python libraries, they extend functionality and perform specific actions within Ansible playbooks. Each module provides a way to manage different aspects of system configuration and automation.

-----------------------------------------------------------------------------------------------------------------------------

# how to invoke ansible for now we try to execute the a simple commands to see if its works

'''''''''

ansible -i nodes all -e ansible_user=ec2-user -e ansible_password=DevOps321 -m ansible.builtin.shell -a uptime

'''''''''
ansible: This is the command-line tool for running ad-hoc commands with Ansible.

[-i nodes]: This specifies the inventory file named nodes which contains the list of hosts or groups of hosts where the command will be executed.

[all]: This tells Ansible to run the command on all hosts listed in the inventory file.

[-e ansible_user=ec2-user]: This sets an extra variable ansible_user to ec2-user. It tells Ansible which user account to use for connecting to the remote hosts.

[-e ansible_password=DevOps321]: This sets an extra variable ansible_password to DevOps321. It specifies the password for the user account on the remote hosts.

[-m ansible.builtin.shell]: This specifies the module to use, in this case, ansible.builtin.shell. The shell module allows you to run shell commands on the remote hosts.

[-a uptime]: This provides the argument to the shell module, specifying the command uptime that you want to run on the remote hosts. The uptime command shows how long the system has been running and other related information.

but we wont be using the above as these are manual execution of commands -> now, we use the concept of playbook for automation of configuration management.