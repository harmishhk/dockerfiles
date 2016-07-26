FROM harmish/robotpkg:robotpkg

RUN apt-get update && \
    # install system packages for optitrack
    apt-get install -y bzip2 libbz2-dev zlib1g-dev libssl-dev libncurses-dev \
    pax tar autoconf automake libtool pkg-config flex tcl-dev bison tk-dev && \

    # install ros packages for optitrack
    apt-get install -y ros-$ROS_DISTRO-tf && \

    # install genom packages for optitrack
    cd /openrobots/src/robotpkg/net/genomix && make update && \
    echo "PKG_OPTIONS.optitrack-genom3+= ros-client-ros ros-client-c ros-server" >> /openrobots/install/etc/robotpkg.conf && \
    cd /openrobots/src/robotpkg/localization/optitrack-genom3 && make update && \
    cd /openrobots/src/robotpkg/supervision/tcl-genomix && make update && \

    # download and build optitrack_person
    mkdir -p /ros_ws/src && \
    git clone https://github.com/harmishhk/optitrack_person -b $ROS_DISTRO-devel /ros_ws/src/optitrack_person && \
    git clone https://github.com/harmishhk/hanp_msgs -b $ROS_DISTRO-devel /ros_ws/src/hanp_msgs && \
    bash -c "source /opt/ros/indigo/setup.bash && catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/$ROS_DISTRO -C /ros_ws install" && \
    chmod -R a+rw /opt/ros/$ROS_DISTRO/share/optitrack_person/scripts && \

    # clean-up
    rm -rf /ros_ws && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    # set defaults
    echo "source /opt/ros/$ROS_DISTRO/setup.bash" >> /etc/bash.bashrc

# setup entrypoint
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
CMD ["bash"]
