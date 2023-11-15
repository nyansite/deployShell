#!/bin/bash
#取得管理员权限后运行
apt-get update
apt-get install git
#安装golang
apt-get install golang
#安装nodejs18
apt-get update
apt-get install -y ca-certificates curl gnupg
mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
NODE_MAJOR=18
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
apt-get update
apt-get install nodejs -y
#安装pgsql
apt-get update
apt-get install postgresql postgresql-client
#安装libvips
apt-get install libvips