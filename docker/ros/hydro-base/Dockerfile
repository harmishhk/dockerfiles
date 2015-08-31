FROM ubuntu:12.04

# setup environment
ENV LANG en_US.UTF-8
RUN locale-gen en_US.UTF-8 && \

    # setup source-list and keys
    apt-get update  && \
    apt-get install -y wget && \
    sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list' && \
    wget --no-check-certificate https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add - && \
    apt-get update --fix-missing && \

    # install ros-hydro-base
    apt-get install -y \
    ros-hydro-ros-base \
    python-catkin-tools && \

    # setup rosdep
    rosdep init && \
    rosdep update && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    # set defaults
    sh -c 'echo "source /opt/ros/hydro/setup.bash" >> /etc/bash.bashrc'

# setup environment
ENV ROS_DISTRO hydro
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash"]
