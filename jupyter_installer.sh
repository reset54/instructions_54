#!/usr/bin/env bash
sudo apt update && sudo apt-get update && sudo apt upgrade

# install pip, virtualenv, jupyterlab
python3.10 -m pip install --upgrade pip
python3.10 -m pip install --user virtualenv
python3.10 -m pip install jupyter

# go to workdir/repository
cd $HOME/SQL_Learning

# Create and Run isolate virtual environment 
python3.10 -m venv env
source env/bin/activate

# add to PATH virtual environment 
export PATH="$HOME/.local/bin"

# save libs in requirements.txt
env/bin/python3.10 -m pip freeze > requirements.txt        # env/bin/python3.10 -m pip install -r requirements.txt  

# run local-server
jupyter notebook --port 5454