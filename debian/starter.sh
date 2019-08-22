#!/bin/bash

apt update

## vim
apt install vim -y

## sudo
apt install sudo -y

## ssh root
sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/sshd_config && service ssh restart

## python3
apt install python3-dev python3-pip -y

## zsh & oh-my-zsh
apt install zsh -y
chsh -s $(which zsh)
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"