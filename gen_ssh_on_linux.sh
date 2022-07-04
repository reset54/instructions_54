#!/usr/bin/env bash
# sudo chmod +x    #for this script
# Generated keys for linux
# https://selectel.ru/blog/tutorials/how-to-generate-ssh/

# gen
ssh-keygen

# Enter file in which to save the key
sudo ls -lsi $HOME/.ssh/
cd $HOME/.ssh

# Enter passphrase (empty for no passphrase)
cat ~/.ssh/id_rsa.pub

# show key:
#cat ~/.ssh/id_rsa.pub >> /mnt/c/Users/reset/