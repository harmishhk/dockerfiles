boxes
======
a small repository to create a local development environment in [Docker](https://www.docker.com/) containers or [Vagrant](https://www.vagrantup.com/) virtual machines.

## dependencies
please make sure you have the following dependencies installed:
- [Docker](https://www.docker.com/)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## usage docker
please check ```readme.md``` inside particular docker folder

## usage vagrant
after checking out boxes go to any directory inside vagrant (e.g. [docker/ros-indigo-base](https://github.com/harmishhk/boxes/tree/master/docker/ros-indigo-base)) and simply run `vagrant up`.

## folder sharing
folder sharing for vagrant can be configured in the [sharing.config.yaml](https://github.com/harmishhk/boxes/blob/master/sharing.config.yaml) file

## known issues
issue: running `vagrant up` for the first time for any of the docker-vagrant images fails (permission issues)
solution: run `vagrant up` again
