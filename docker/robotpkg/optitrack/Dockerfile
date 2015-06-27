FROM harmishhk/robotpkg:robotpkg

# install system packages for optitrack
RUN apt-get update
RUN apt-get install -y bzip2 libbz2-dev zlib1g-dev libssl-dev libncurses-dev \
    pax tar autoconf automake libtool pkg-config flex tcl-dev bison tk-dev

# install ros packages for optitrack
run apt-get install -y ros-indigo-tf

RUN echo "PKG_OPTIONS.optitrack-genom3+= ros-client-ros ros-client-c ros-server" >> ~/openrobots/install/etc/robotpkg.conf
RUN cd ~/openrobots/src/robotpkg/wip/optitrack-genom3 && make update
RUN cd ~/openrobots/src/robotpkg/wip/genomix && make update
RUN cd ~/openrobots/src/robotpkg/wip/tcl-genomix && make update

# TODO

# # update ROS_PACKAGE_PATH

# # clone optitrack ros related packages and set up environ variables for optitrack_ws

# # start processes with supervisor
# RUN apt-get install -y supervisor
# COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
# CMD ["/usr/bin/supervisord"]
