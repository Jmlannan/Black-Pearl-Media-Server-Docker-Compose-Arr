#!/bin/bash

[ `whoami` = root ] || { sudo "$0" "$@"; exit $?; }

sh check-config.sh #check docker install
sudo docker-compose -f ./docker-compose.yaml up -d --remove-orphans #run the docker compose
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data cr.portainer.io/portainer/portainer-ce:2.9.3 #installs portainer for management
    
    
    
    