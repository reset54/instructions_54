#!/usr/bin/env bash
# sudo chmod +x    #for this script
# Generated keys for linux
# https://selectel.ru/blog/tutorials/how-to-generate-ssh/

# $1 - first arg in bash when running the this script
REPO_NAME=$1
# MY_EMAIL = your@email.com
ssh-keygen -t rsa -b 4096 -C $MY_EMAIL

# Enter file in which to save the key
sudo ls -lsi $HOME/.ssh/
cd $HOME/.ssh


mv ~/.ssh/id_rsa.pub $REPO_NAME.deploy.pem
sudo chmod 400 $REPO_NAME.deploy.pem

# Enter passphrase (empty for no passphrase)