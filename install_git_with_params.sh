#!/bin/bash
sudo apt update &&  sudo apt-get update && sudo apt upgrade
# git install
sudo apt install git
# Variables:
$GIT_PERSONAL_USERNAME=$1
$GIT_PERSONAL_EMAIL=$2
# add Name to git $USER = reset54, whoami
git config --global user.name "$GIT_PERSONAL_USERNAME"
# add Email to git
git config --global user.email "$GIT_PERSONAL_EMAIL"
# check our installation
git --version
# show contents in file ~/.gitconfig
git config --list --show-origin

echo $GIT_PERSONAL_USERNAME
