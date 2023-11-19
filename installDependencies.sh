#!/bin/bash
#in root
apt-get update
apt-get install git
#install golang
apt-get install wget
wget https://golang.google.cn/dl/go1.20.11.linux-amd64.tar.gz
tar -C /usr/local -xzf go1.20.11.linux-amd64.tar.gz
sed -i -e '$a\export PATH=$PATH:/usr/local/go/bin' /etc/profile
source /etc/profile
rm go1.20.11.linux-amd64.tar.gz
#install nodejs18
apt-get update
apt-get install -y ca-certificates curl gnupg
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt-get update
apt-get install nodejs -y
#install pgsql
apt-get update
apt-get install postgresql postgresql-client
#install libvips,for nodebb
apt-get install libvips