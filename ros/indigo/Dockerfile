FROM harmish/ros:indigo-devel

    # install current packages
RUN apt-get update && \
    apt-get install -y \
        ros-$ROS_DISTRO-control-toolbox \
        ros-$ROS_DISTRO-interactive-markers \
        ros-$ROS_DISTRO-laser-filters \
        # ros-$ROS_DISTRO-libg2o \
        ros-$ROS_DISTRO-rqt \
        ros-$ROS_DISTRO-rqt-common-plugins \
        ros-$ROS_DISTRO-rviz \
        ros-$ROS_DISTRO-pr2-description \
        ros-$ROS_DISTRO-teleop-twist-keyboard \
        ros-$ROS_DISTRO-teleop-twist-joy \
        ros-$ROS_DISTRO-rosbridge-suite \
        ros-$ROS_DISTRO-tf2-web-republisher && \
    #
    # g2o requires cmake > 3.1
    apt-get install -y wget && \
    wget -O /tmp/cmake-3.10.1.tar.gz https://cmake.org/files/v3.10/cmake-3.10.1.tar.gz && \
    tar -C /tmp -xzvf /tmp/cmake-3.10.1.tar.gz && \
    sh -c "cd /tmp/cmake-3.10.1 && ./bootstrap && make && make install" && \
    #
    apt-get install -y libopenblas-dev liblapack-dev && \
    wget -O /tmp/SuiteSparse-4.5.5.tar.gz http://faculty.cse.tamu.edu/davis/SuiteSparse/SuiteSparse-4.5.5.tar.gz && \
    tar -C /tmp -xzvf /tmp/SuiteSparse-4.5.5.tar.gz && \
    sh -c "cd /tmp/SuiteSparse/metis-5.1.0 && make config prefix=/usr/local && make install" && \
    sh -c "cd /tmp/SuiteSparse && make install INSTALL_LIB=/usr/local/lib INSTALL_INCLUDE=/usr/local/include" && \
    #
    git clone https://github.com/RainerKuemmerle/g2o.git /tmp/g2o && \
    sh -c "mkdir /tmp/g2o/build && cd /tmp/g2o/build && cmake ../ && make install" && \
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
