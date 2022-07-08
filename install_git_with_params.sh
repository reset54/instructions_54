#!/bin/bash
# update Linux
sudo apt update && sudo apt-get update && sudo apt upgrade
# git install
sudo apt install git
# add Name to git
git config --global user.name "$USER"
# add Email to git
git config --global user.email "$MY_EMAIL"
# check our installation
git --version
# show contents in file ~/.gitconfig
git config --list --show-origin