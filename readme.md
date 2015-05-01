boxes
======
a collection of development environments in [Docker](https://www.docker.com/) containers or inside [Vagrant](https://www.vagrantup.com/) virtual machines.

## dependencies
to use only docker containers:
- [Docker](https://www.docker.com/)

when hosting docker images inside a vagrant machine or simply using vagrant vms:
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## usage docker
please check ```readme.md``` inside particular docker folder

## usage vagrant
- go to any directory inside vagrant (e.g. [ubuntu-1404](https://github.com/harmishhk/boxes/tree/master/vagrant/ubuntu-1404)) and simply run `vagrant up`.
- folder sharing for vagrant can be configured in the [sharing.config.yaml](https://github.com/harmishhk/boxes/blob/master/vagrant/sharing.config.yaml) file.
