vagrant-boxes
======
a small repository to create a local development environment in [Docker](https://www.docker.com/) containers hosted on [Vagrant](https://www.vagrantup.com/) virtual machines.

## dependencies
please make sure you have the following dependencies installed:

- [Vagrant](https://www.vagrantup.com/downloads.html)
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)

## usage
after checking out vagrant-boxes go to any directory inside docker (e.g. [docker/ros-indigo-base](https://github.com/harmishhk/boxes/tree/master/docker/ros-indigo-base)) and simply run `vagrant up`.

## folder sharing
folder sharing can be configured in the [sharing.config.yaml](https://github.com/harmishhk/boxes/blob/master/sharing.config.yaml) file

## known issues
issue: running `vagrant up` for the first time for any of the docker images fails (permission issues)
solution: run `vagrant up` again
