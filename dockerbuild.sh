#!/bin/sh

sudo apt update && apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt install -y docker-ce docker-compose
sudo service docker start
curl -s https://raw.githubusercontent.com/Coporton/xtreamui-on-docker/master/docker-compose.yml > xui.yml
docker-compose -f xui.yml up -d
rm -f dockerbuild.sh