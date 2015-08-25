FROM ubuntu:14.04

# setup environment
ENV LANG en_US.UTF-8
RUN locale-gen en_US.UTF-8 && \

    # setup source-list and keys
    sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116 && \
    apt-get update --fix-missing && \

    # install ros-jade-base
    apt-get install --no-install-recommends -y \
    ros-jade-ros-base \
    python-catkin-tools && \

    # setup rosdep
    rosdep init && \
    rosdep update && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    # set defaults
    sh -c 'echo "source /opt/ros/jade/setup.bash" >> ~/.bashrc'

# setup environment
ENV ROS_DISTRO jade
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash"]
