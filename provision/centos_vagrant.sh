#!/bin/bash

if [ ! -f "/var/network_provisioned" ]; then
  echo "Enabling networking..." 
  # This will probably have to be done manually, otherwise it'll be hard to get the script in
  sed -i "s/ONBOOT=no/ONBOOT=yes/" /etc/sysconfig/network-scripts/ifcfg-eth0
  service network restart

  sed -i "s/#PermitRootLogin yes/PermitRootLogin yes/" /etc/ssh/sshd_config
  service sshd restart

  touch /var/network_provisioned
fi

if [ ! -f "/var/vagrant_user_provisioned" ]; then 
  echo "Adding vagrant user..."
  adduser vagrant

  echo "Adding vagrant public key..."
  mkdir /home/vagrant/.ssh
  chmod 700 /home/vagrant/.ssh
  cd /home/vagrant/.ssh
  wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys
  chmod 600 /home/vagrant/.ssh/authorized_keys
  chown -R vagrant /home/vagrant/.ssh

  echo "Add vagrant to sudoers..."
  echo "vagrant ALL=(ALL) ALL" >> /etc/sudoers
  echo "vagrant ALL=NOPASSWD: ALL" >> /etc/sudoers
  sed -i "s/(Defaults\s+requiretty)/# \1/" /etc/sudoers

  touch /var/var/vagrant_user_provisioned
fi

if [ ! -f "/var/vbox_guest_additions_provisioned" ]; then 
  echo "Please insert virtualbox guest additions CD"
  read
  echo "Installing guest additions..."
  mount /dev/cdrom /media
  yum install yum-plugin-priorities
  wget http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.3-1.el6.rf.i686.rpm
  rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
  rpm -K rpmforge-release-0.5.3-1.el6.rf.*.rpm
  rpm -i rpmforge-release-0.5.3-1.el6.rf.*.rpm
  yum -y update kernel
  yum -y install dkms perl gcc make

  touch /var/vbox_guest_additions_provisioned
  shutdown -r now
fi 

if [ ! -f "/var/size_optimized" ]; then 
  echo "Minimizing final box size..."
  dd if=/dev/zero of=/EMPTY bs=1M
  rm -f /EMPTY

  touch /var/size_optimized
fi 

