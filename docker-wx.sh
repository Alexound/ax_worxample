#!/bin/bash

sudo yum update -y
sudo yum install vim -y
echo -e "\nset number\nset shiftwidth=4\nset tabstop=4" | sudo tee -a /etc/vimrc

sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager -y --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y
sudo usermod -aG docker vagrant
service docker start
