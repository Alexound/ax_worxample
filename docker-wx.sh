#!/bin/bash

## Goals of this script are:
## 1. Update Host Operating System and install essential packages.
## 2. Install Docker Service and run it in Swarm Mode.

# First: general systemd update and upgrade.
sudo yum update -y

# Second: install and configure vim for administrative tasks.
sudo yum install vim -y
echo -e "\nset number\nset shiftwidth=4\nset tabstop=4" | sudo tee -a /etc/vimrc

# Third: Install required dependencies for further docker installation.
sudo yum install -y yum-utils device-mapper-persistent-data lvm2

# Fourth: add docker repository.
sudo yum-config-manager -y --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Fifth: install docker community edition.
sudo yum install docker-ce docker-ce-cli containerd.io -y

# Sixth: add current user (vagrant) to the docker group (to get rid of sudo).
sudo usermod -aG docker vagrant

# Seventh: acrually start docker service.
service docker start

# Eighth: enable swarm mode.
docker swarm init
