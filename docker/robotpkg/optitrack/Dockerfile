FROM harmishhk/robotpkg:robotpkg

# install system packages for optitrack
RUN apt-get update
RUN apt-get install -y bzip2 libbz2-dev zlib1g-dev libssl-dev libncurses-dev \
    pax tar autoconf automake libtool pkg-config flex tcl-dev bison tk-dev

# install ros packages for optitrack
run apt-get install -y ros-indigo-tf

# install genom packages for optitrack
RUN cd $HOME/openrobots/src/robotpkg/net/genomix && make update
RUN echo "PKG_OPTIONS.optitrack-genom3+= ros-client-ros ros-client-c ros-server" >> $HOME/openrobots/install/etc/robotpkg.conf
RUN cd $HOME/openrobots/src/robotpkg/wip/optitrack-genom3 && make update
RUN cd $HOME/openrobots/src/robotpkg/wip/tcl-genomix && make update

# download and build optitrack_person
RUN mkdir -p $HOME/catkin_ws/src && \
    git clone https://github.com/harmishhk/optitrack_person $HOME/catkin_ws/src/optitrack_person && \
    git clone https://github.com/harmishhk/hanp_msgs $HOME/catkin_ws/src/hanp_msgs && \
    zsh -c "source /opt/ros/indigo/setup.zsh && catkin_make -C $HOME/catkin_ws install"

# setup entrypoint
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/usr/bin/zsh", "/entrypoint.sh"]
CMD ["/usr/bin/zsh"]
