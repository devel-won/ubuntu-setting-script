#!/bin/sh

sudo apt-get update

###### install vim #############################

sudo apt-get install -y vim

# TODO : skel안에 있는 .vimrc 복사해서 넣기

####### install git ############################

sudo apt-get install -y git

# change to your email & name
git config --global user.email "develwon@gmail.com"
git config --global user.name "devel-won"

#######
