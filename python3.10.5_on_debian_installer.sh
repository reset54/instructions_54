#!/usr/bin/env bash
# go to the folder whert we make work-directory, with the USER_NAME (reset54)
cd $HOME

# update the package manager dependencies
sudo apt update && sudo apt upgrade
sudo apt-get update

# libs for your server install --yes
sudo apt-get install -y curl gcc htop mosh make vim tmux wget unzip zip
sudo -H pip3 install virtualenv

# install the necessary libraries to install and build 
# python 3.10.0 from source
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

# Download the archive, with Python
wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz

# Extract the archive
tar -xzvf Python-3.10.5.tgz

# Navigate to the extracted directory
cd Python-3.10.5

# run the configure command to see if the necessary dependencies are available. 
# command uses the -enable-optimizations flag to optimize the binary and run multiple tests.
./configure --enable-optimizations --prefix=$HOME/.python3.10/

# startup assembly, number of processor cores on the server (my PC == 6)
make -j 6 

# install python into $HOME.python3.10/
# altinstall flag is used to save the default Python binary path in /usr/bin/python.
sudo make altinstall

# remove arvhive tar.gz and dir Python-3.10.5
cd $HOME
sudo rm -rf Python-3.10.5*

# add PATH python3.10
export PATH="$PATH:$HOME/.python3.10/bin"

# run bashrc file
sudo source ~/.profile

# show environement variables (path, ...)
env

# check the python version, was the installation successful?
python3.10 --version
