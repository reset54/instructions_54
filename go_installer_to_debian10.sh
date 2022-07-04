#!/bin/bash
# sudo chmod +x go_installer_to_debian10.sh
sudo apt update && sudo apt-get update
sudo apt install curl

$GO_TAR_GZ = go1.15.linux-amd64.tar.gz
# curl -O link_download_go_tar.gz
curl -O https://dl.google.com/go/$GO_TAR_GZ
# Compare the hash in the output with the checksum value on the Go download page. 
# If they match, then the download can be considered valid.
sha256sum $GO_TAR_GZ
# After downloading Go and verifying the integrity of the file, you can begin the installation process.
tar xvf $GO_TAR_GZ