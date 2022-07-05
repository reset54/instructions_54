#!/bin/bash
# sudo chmod +x go_installer_to_debian10.sh
sudo apt update && sudo apt-get update
# create DIR and change directory to $HOME/go 
mkdir $HOME/go 
cd $HOME
# wget link_download_go_tar.gz
sudo apt install wget -y
GO_TAR_GZ="go1.18.3.linux-arm64.tar.gz"
wget https://go.dev/dl/$GO_TAR_GZ
# Compare the hash in the output with the checksum value on the Go download page. 
# After downloading Go and verifying the integrity of the file, you can begin the installation process.
sudo tar -xzvf $GO_TAR_GZ

# Change the go directory to the user and group root and move it to /usr/local:
sudo chown -R root:root ./go
sudo mv go /usr/local

# to the PATH environment variable by adding
export GOROOT="/usr/local/go"
export GOPATH="$HOME"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"
# check
echo "GOPATH = $GOPATH" 
echo "GOROOT = $GOROOT"

# delete archive
rm -r go1.18.3.linux-arm64.tar.gz*

# check result
sha256sum $GO_TAR_GZ
go version