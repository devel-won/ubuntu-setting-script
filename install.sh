#!/bin/sh

sudo apt-get update && sudo apt-get upgrade

###### install vim #############################

sudo apt-get install -y vim

# TODO : skel안에 있는 .vimrc 복사해서 넣기

####### install git ############################

sudo apt-get install -y git

# change to your email & name
git config --global user.email "develwon@gmail.com"
git config --global user.name "devel-won"

####### install docker #########################

sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common 

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get install -y docker-ce

sudo usermod -aG docker $USER
