FROM harmishhk/robotpkg:robotpkg

RUN apt-get update && \
    # install system packages for optitrack
    apt-get install -y bzip2 libbz2-dev zlib1g-dev libssl-dev libncurses-dev \
    pax tar autoconf automake libtool pkg-config flex tcl-dev bison tk-dev && \

    # install ros packages for optitrack
    apt-get install -y ros-indigo-tf && \

    # install genom packages for optitrack
    cd openrobots/src/robotpkg/net/genomix && make update && \
    echo "PKG_OPTIONS.optitrack-genom3+= ros-client-ros ros-client-c ros-server" >> /openrobots/install/etc/robotpkg.conf && \
    cd /openrobots/src/robotpkg/wip/optitrack-genom3 && make update && \
    cd /openrobots/src/robotpkg/wip/tcl-genomix && make update && \

    # download and build optitrack_person
    mkdir -p /ros_ws/src && \
    git clone https://github.com/harmishhk/optitrack_person /ros_ws/src/optitrack_person && \
    git clone https://github.com/harmishhk/hanp_msgs /ros_ws/src/hanp_msgs && \
    /bin/bash -c "source /opt/ros/indigo/setup.bash && catkin_make -C /ros_ws install" && \
    chmod -R a+rw /ros_ws/install/share/optitrack_person/scripts && \

    # clean-up
    rm -rf /ros_ws/src /ros_ws/build  /ros_ws/devel && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    # set defaults
    echo "source /ros_ws/install/setup.bash" >> /etc/bash.bashrc

# setup entrypoint
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash"]
