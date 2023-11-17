#!/bin/bash
#su firstly or in root
apt-get update
apt-get install git
#install golang
apt-get install golang
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