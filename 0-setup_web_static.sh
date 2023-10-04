#!/usr/bin/env bash
# sets up the web servers for the deployment of web_static

# update the package lists
sudo apt-get -y update

# install nginx
sudo apt-get -y install nginx

# make directories for the deployment using -p to create all parent directories if not existing
sudo mkdir -p /data/web_static/releases/test 
sudo mkdir -p /data/web_static/shared

# give ownership of the /data/ directory to the ubuntu user 
sudo chown -R ubuntu /data/

# give group ownership of the /data/ directory to the ubuntu user
sudo chgrp -R ubuntu /data/
