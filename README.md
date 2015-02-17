# Managing Files via Puppet: Let Me Count The Ways
Mike Arnold (razorsedge)

Configuration files abound. They are the primary way to get our systems to do
the things we want them to do. Puppet has a number of ways for us to manage
these files. From static, whole file control through template-based file
deployment to separate, line-based configuration, Puppet can get the bits we
need into the correct file with little trouble. In addition to managing the
file, this talk will also cover patterns (APIs) that a module can follow to
allow other modules to control the contents of it's configuration files.

[![Creative Commons License](https://i.creativecommons.org/l/by-nc-nd/4.0/80x15.png)](http://creativecommons.org/licenses/by-nc-nd/4.0/)


# Steps to install the presentation environment on a local Vagrant setup

## Check out the code

```
git checkout https://github.com/razorsedge/presentation-managing-files-via-puppet.git puppetcampphoenix2015
cd puppetcampphoenix2015
git submodule init
git submodule update
```

## Start the virtual environment
This assumes that you have Vagrant installed.

```
vagrant up
vagrant ssh
```

## Start the presentation
Once logged in to the virtaul machine as the vagrant user, run the
`getready.sh` script.  A chrome browser should appear on your display.

```
/vagrant/getready.sh
```
Click "OK" on the Chrome dialog box that pops up.


------------------------------------------------------------
# Commands run in the terminal

```
puppet apply /etc/puppet/modules/example/tests/A.pp
cat /tmp/testFileA
cat /etc/puppet/modules/example/files/fileA

puppet apply /etc/puppet/modules/example/tests/B.pp
cat /tmp/testFileB
more /etc/puppet/modules/example/files/fileB*

puppet apply /etc/puppet/modules/example/tests/C.pp
cat /tmp/testFileC

puppet apply /etc/puppet/modules/example/tests/D.pp
cat /tmp/testFileD

puppet apply /etc/puppet/modules/example/tests/E.pp
cat /tmp/testFileE

puppet apply /etc/puppet/modules/example/tests/F.pp
cat /tmp/testFileF

puppet apply /etc/puppet/modules/example/tests/G.pp
cat /tmp/testFileG

puppet apply /etc/puppet/modules/example/tests/H.pp
cat /tmp/testFileH

puppet apply --parser=future /etc/puppet/modules/example/tests/I.pp
cat /tmp/testFileI

puppet apply /etc/puppet/modules/example/tests/J.pp
cat /tmp/testFileJ

puppet apply /etc/puppet/modules/example/tests/K.pp
cat /tmp/testFileK
cat /etc/resolv.conf

puppet apply /etc/puppet/modules/example/tests/L.pp
cat /tmp/testFileL

puppet apply /etc/puppet/modules/example/tests/M.pp
cat /tmp/testFileM

puppet apply /etc/puppet/modules/example/tests/N.pp
cat /tmp/testFileN

puppet apply /etc/puppet/modules/example/tests/O.pp
cat /tmp/testFileO

puppet apply /etc/puppet/modules/example/tests/P.pp
cat /etc/puppet/modules/example/templates/templateP.erb
cat /tmp/testFileP

sudo puppet apply /etc/puppet/modules/example/tests/sudo.pp
sudo ls -l /etc/sudoers.d

sudo grep PermitRootLogin /etc/ssh/sshd_config
sudo puppet apply /etc/puppet/modules/example/tests/augeasproviders_ssh.pp
sudo grep PermitRootLogin /etc/ssh/sshd_config

grep linux16 /boot/grub2/grub.cfg
sudo puppet apply /etc/puppet/modules/example/tests/augeasproviders_grub.pp
grep linux16 /boot/grub2/grub.cfg

cat /etc/sysconfig/network
sudo puppet apply /etc/puppet/modules/example/tests/augeasproviders_shellvar.pp
cat /etc/sysconfig/network

sysctl net.ipv4.ip_forward
cat /etc/sysctl.conf
sudo puppet apply /etc/puppet/modules/example/tests/augeasproviders_sysctl.pp
sysctl net.ipv4.ip_forward
cat /etc/sysctl.conf

rpm -q httpd
sudo puppet apply /etc/puppet/modules/example/tests/apache_vhost.pp
head /etc/httpd/conf.d/25-first.example.com.conf
```
------------------------------------------------------------

# Git Submodule Setup
These are the commands used to set up the submodules used in the presentation.

```
git submodule add https://github.com/puppetlabs/puppetlabs-stdlib.git modules/stdlib
pushd modules/stdlib
git checkout 4.5.1
popd
git commit -av -m'Added puppetlabs-stdlib submodule.'

git submodule add https://github.com/puppetlabs/puppetlabs-inifile.git modules/inifile
pushd modules/inifile
git checkout 1.2.0
popd
git commit -av -m'Added puppetlabs-inifile submodule.'

git submodule add https://github.com/puppetlabs/puppetlabs-concat.git modules/concat
pushd modules/concat
git checkout 1.1.2
popd
git commit -av -m'Added puppetlabs-concat submodule.'

git submodule add https://github.com/richardc/puppet-datacat.git modules/datacat
pushd modules/datacat
git checkout 0.6.1
popd
git commit -av -m'Added richardc/datacat submodule.'

git submodule add https://github.com/saz/puppet-sudo.git modules/sudo
pushd modules/sudo
git checkout v3.0.9
popd
git commit -av -m'Added saz/sudo submodule.'

git submodule add https://github.com/puppetlabs/puppetlabs-apache.git modules/apache
pushd modules/apache
git checkout 1.2.0
popd
git commit -av -m'Added puppetlabs/apache submodule.'

git submodule add https://github.com/hercules-team/augeasproviders_core.git modules/augeasproviders_core
pushd modules/augeasproviders_core
git checkout 2.1.1
popd
git commit -av -m'Added herculesteam/augeasproviders_core submodule.'

git submodule add https://github.com/hercules-team/augeasproviders_ssh.git modules/augeasproviders_ssh
pushd modules/augeasproviders_ssh
git checkout 2.2.2
popd
git commit -av -m'Added herculesteam/augeasproviders_ssh submodule.'

git submodule add https://github.com/hercules-team/augeasproviders_shellvar.git modules/augeasproviders_shellvar
pushd modules/augeasproviders_shellvar
git checkout 2.1.1
popd
git commit -av -m'Added herculesteam/augeasproviders_shellvar submodule.'

git submodule add https://github.com/hercules-team/augeasproviders_grub.git modules/augeasproviders_grub
pushd modules/augeasproviders_grub
git checkout 2.0.1
popd
git commit -av -m'Added herculesteam/augeasproviders_grub submodule.'

git submodule add https://github.com/hercules-team/augeasproviders_sysctl.git modules/augeasproviders_sysctl
pushd modules/augeasproviders_sysctl
git checkout 2.0.1
popd
git commit -av -m'Added herculesteam/augeasproviders_sysctl submodule.'
```

