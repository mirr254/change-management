#!/bin/bash -e
sudo apt-get update
echo "apt-get update done."
sudo apt-get -y install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get -y install ansible