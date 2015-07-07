FROM ubuntu:12.04

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# install necessities
RUN apt-get update
RUN apt-get install -y wget

# setup source-list and keys
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list' && \
    wget --no-check-certificate https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add - && \
    apt-get update

# install ros-hydro base and initialize rosdep
RUN apt-get install -y zsh \
    ros-hydro-desktop \
    python-rosinstall \
    python-catkin-tools

# setup rosdep
RUN rosdep init && \
    rosdep update

# clean up
RUN rm -rf /var/lib/apt/lists/*

# setup ros
ENV ROS_DISTRO hydro
RUN sh -c 'echo "source /opt/ros/hydro/setup.zsh" >> ~/.zshrc'
COPY ./entrypoint.sh entrypoint.sh
ENTRYPOINT ["/usr/bin/zsh", "entrypoint.sh"]
CMD ["/usr/bin/zsh"]
