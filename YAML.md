# YAML

yet another Markup language: presentation languge.

YAML syntax consitsts of 2:

dictionary and lists:

1. Dictonary: a key value pair is called a dictonary
2. Lists: a list of items plurals. 

dictonary -->  key:value pair
lists --> -banaa
          -apple anything with a '-' is called as lists.  


syntax of playbook:

- name: playname
  hosts: group name
  tasks: 
    - name: taskname
      module name:
        action: input to action

example:

- name: hello msgs
  hosts: all    
  taks: 
    - name: sending a message
      ansible.builtin.ping: 
        data: pong