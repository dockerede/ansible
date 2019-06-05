#!/bin/bash

yes | ssh-keygen -N "" -f ~/.ssh/id_rsa

ansible all -m ping -k 

ansible all -m authorized_key -a 'user=root  key={{ lookup("file", "/root/.ssh/id_rsa.pub") }}'

ansible all  -m shell  -a "yum install -y net-tools"
