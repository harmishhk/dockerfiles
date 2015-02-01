FROM    ubuntu:12.04

# install necessities
RUN apt-get update
RUN apt-get install -y \
    build-essential \
    curl \
    gcc \
    git \
    git-core \
    make \
    vim \
    python-software-properties \
    software-properties-common \
    openssh-server \
    wget \
    tmux \
    sudo

# set root pasword
#RUN echo 'root:root' | chpasswd

# create and configure vagrant user in the docker container
RUN useradd --create-home -s /bin/bash vagrant
WORKDIR /home/vagrant

# configure ssh and password less sudo access for 'vagrant´ user
RUN \
    mkdir -p /var/run/sshd && \
    chmod 0755 /var/run/sshd && \
    mkdir -p /home/vagrant/.ssh && \
    chmod 700 /home/vagrant/.ssh && \
    cd /home/vagrant/.ssh && \
    wget --no-check-certificate 'https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub' -O authorized_keys && \
    chmod 600 /home/vagrant/.ssh/authorized_keys && \
    chown -R vagrant /home/vagrant/.ssh && \
    echo -n 'vagrant:vagrant' | chpasswd && \
    mkdir -p /etc/sudoers.d && \
    echo 'vagrant ALL=NOPASSWD: ALL' > /etc/sudoers.d/vagrant && \
    chmod 440 /etc/sudoers.d/vagrant

#FROM local:ubuntu-1204

# setup source-list and keys
RUN \
    echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list && \
    wget --no-check-certificate wget https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add - && \
    apt-get update

# install ros-hydro base and initialize rosdep
RUN apt-get install -y ros-hydro-ros-base
RUN rosdep init

# switch to 'vagrant' user and update rosdep
USER vagrant
ENV HOME /home/vagrant
RUN rosdep update

# setup ros for each login shell
RUN \
    echo "HOME=/home/vagrant" >> ~/.bashrc && \
    echo "LC_ALL=C" >> ~/.bashrc && \
    echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc

# and start the ssh server
EXPOSE 22
CMD sudo /usr/sbin/sshd -D -o UseDNS=no -o UsePAM=no
