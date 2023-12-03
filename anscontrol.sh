#! /bin/bash
sudo adduser ansible
sudo echo "ansible:ansible" | chpasswd
sudo echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
sudo su - ansible
sudo apt update
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install ansible -y
sudo su - ansible
sudo mkdir /home/ansible/.ssh
sudo chown -R ansible:ansible /home/ansible/.ssh
sudo cp /home/ubuntu/.ssh/authorized_keys /home/ansible/.ssh
sudo chown ansible:ansible /home/ansible/.ssh/authorized_keys
sudo chown -R ansible:ansible /etc/ansible