FROM ubuntu:14.04

# setup environment
ENV LANG en_US.UTF-8
RUN locale-gen en_US.UTF-8 && \

    # setup source-list and keys
    sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-key 0xB01FA116 && \
    apt-get update --fix-missing && \

    # install ros-indigo-base
    apt-get install -y \
    ros-indigo-ros-base \
    python-catkin-tools && \

    # setup rosdep
    rosdep init && \
    rosdep update && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    # set defaults
    echo "source /opt/ros/indigo/setup.bash" >> /etc/bash.bashrc

# setup environment
ENV ROS_DISTRO indigo
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash"]
