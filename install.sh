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

sudo apt-get update && sudo apt-get install -y docker-ce

sudo usermod -aG docker $USER

###### install nvidia-docker ######################

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey | sudo apt-key add -

distribution=$(. /etc/os-release;echo $ID$VERSION_ID)

curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list | sudo tee /etc/apt/sources.list.d/nvidia-docker.list

sudo systemctl restart docker

sudo apt-get update && sudo apt-get install -y nvidia-docker2

###### install java & sbt  ###############################

sudo apt-get install openjdk-8-jdk

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list

curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | sudo apt-key add

sudo apt-get update

sudo apt-get install sbt

####### install intellij ###############################

sudo cp -r pkg/idea-IC-192.7142.36 /opt
bash /opt/idea-IC-192.7142.36/bin/idea.sh

####
