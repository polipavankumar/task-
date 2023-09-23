#!/bin/bash
sudo yum -y update
sudo yum -y install git
sudo yum -y install docker
sudo systemctl start docker
sudo systemctl enable docker
sudo chmod 666 /var/run/docker.sock
git clone https://github.com/polipavankumar/task-.git
cd git-repo
docker build -t img .
docker login --username=polipavan --password=pavan@143
docker tag img polipavanimg
docker push polipavan/img
docker run -dt --name con -p 80:80 img
