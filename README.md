# deployShell

bash shell to deploy nyasite

# environment

docker run -it --name="nyasite" -p 3000:3000 -p 8000:8000 -p 4567:4567  -p 5432:5432  -v (YourLocationRepository):/nyasite ubuntu:22.04 /bin/bash

# deploy order

#### 1.installDependencies.sh

install dependence and software needed

golang1.20,nodejs16,git,pgsql,libvips(for nodebb)

wget(can uninstall after deploy)

#### 2.deployDB.sh (on not root)

run deployDB.sql

creat database dbs nodebb

creat superuser for nyasiteBackend and nodebb

#### 3.deployHTTPS.sh deploySSH.sh

deploy nyasiteFrontend(cirno_web) , nyasiteBackend (cute_site) , nyasiteNodeBB(NodeBB)

need to set nodebb in browser

(change your password when not dev)

| form     | input      |
| -------- | ---------- |
| type     | PostgreSQL |
| database | nodebb     |
| account  | nodebb     |
| password | 114514     |
