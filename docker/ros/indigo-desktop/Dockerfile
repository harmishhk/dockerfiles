FROM ubuntu:14.04

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# setup source-list and keys
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116 && \
    apt-get update

# install ros-indigo base
RUN apt-get install -y zsh \
    ros-indigo-desktop \
    python-rosinstall \
    python-catkin-tools

# setup rosdep
RUN rosdep init && \
    rosdep update

# clean up
RUN rm -rf /var/lib/apt/lists/*

# setup ros
ENV ROS_DISTRO indigo
RUN sh -c 'echo "source /opt/ros/indigo/setup.zsh" >> ~/.zshrc'
COPY ./entrypoint.sh entrypoint.sh
ENTRYPOINT ["/usr/bin/zsh", "entrypoint.sh"]
CMD ["/usr/bin/zsh"]
