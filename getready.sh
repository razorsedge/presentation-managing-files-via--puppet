#!/bin/bash

sudo rm -f /tmp/test*
sudo yum -y -e1 -d1 install --downloadonly httpd
if [ -d /opt/wetty ]; then
  #cd /opt/wetty
  #nohup node app.js -p 3000 &
  /vagrant/wetty
fi
cd /opt/presentation
./shellinabox
grunt serve &
cd
sleep 5
pkill chrome
sleep 2
nohup google-chrome http://localhost:8000/ &
