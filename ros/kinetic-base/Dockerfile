FROM nvidia/cuda:8.0-devel

# setup environment
ENV LANG en_US.UTF-8
RUN locale-gen en_US.UTF-8 && \

    # setup source-list and keys
    sh -c 'echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116 && \
    apt-get update --fix-missing && \

    # install ros-kinetic-base
    apt-get install -y \
    ros-kinetic-ros-base \
    python-catkin-tools \
    git build-essential && \

    # setup rosdep
    rosdep init && \
    rosdep update && \

    # replace catkin (with Catch) and catkin_pkg
    git clone https://github.com/harmishhk/catkin -b kinetic-catch /catkin_ws/src/catkin && \
    /bin/bash -c "source /opt/ros/kinetic/setup.bash && catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/kinetic -C /catkin_ws install" && \
    git clone https://github.com/harmishhk/Catch /catch && \
    /bin/bash -c "python /catch/scripts/generateSingleHeader.py && mkdir -p /opt/local/catch/include && cp /catch/single_include/catch.hpp /opt/local/catch/include/catch.hpp" && \
    git clone https://github.com/harmishhk/catkin_pkg /catkin_pkg && \
    /bin/bash -c "cd /catkin_pkg && python setup.py install" && \
    rm -rf /catkin_ws /catch /catkin_pkg && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    # set defaults
    echo "source /opt/ros/kinetic/setup.bash" >> /etc/bash.bashrc

# setup environment
ENV ROS_DISTRO kinetic
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash"]
