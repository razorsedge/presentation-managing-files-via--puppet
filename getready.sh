#!/bin/bash

echo "*** clearing tempfiles"
sudo rm -f /tmp/test*
echo "*** caching httpd"
sudo yum -y -e1 -d1 install --downloadonly httpd
echo "*** silencing puppet warnings"
sudo touch /etc/puppet/hiera.yaml
sudo puppet config set disable_warnings deprecations
if [ -d /opt/wetty ]; then
  echo "*** starting wetty"
  #cd /opt/wetty
  #nohup node app.js -p 3000 &
  /vagrant/wetty
fi
echo "*** starting presentation"
cd /opt/presentation
./shellinabox
grunt serve &
cd
sleep 20
pkill chrome
sleep 2
nohup google-chrome http://localhost:8000/ >/home/vagrant/nohup.chrome.out &
