#!/bin/bash
#
# Vagrant provisionning script
#
# Usage for provisionning VM & running (in Vagrant file):
# 
# script.sh --install <role>
#
# e.g. : 
# script.sh --install ansible-nginx
# 
# Usage for running only (from host):
#
# vagrant ssh -c specs
#
if [ "x$1" == "x--install" ]; then
  mv ~vagrant/specs /usr/local/bin/specs
  chmod 755 /usr/local/bin/specs
  sudo apt-get install -qqy git
  su vagrant -c 'git clone --depth 1 https://github.com/nickjj/rolespec'
  cd ~vagrant/rolespec && make install
  su vagrant -c 'rolespec -i ~/testdir'
  su vagrant -c "ln -s /vagrant/ ~/testdir/roles/$2"
  su vagrant -c "ln -s /vagrant/tests/$2/ ~/testdir/tests/"
  exit
fi

cd ~vagrant/testdir && rolespec -r $(ls roles) "$*"
