FROM harmish/ros:indigo-navigation

# install gazebo7
RUN sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable $(lsb_release -cs) main" > /etc/apt/sources.list.d/gazebo-stable.list' && \
    apt-key adv --keyserver ha.pool.sks-keyservers.net --recv-keys D2486D2DD83DB69272AFE98867170598AF249743 && \
    apt-get update && \
    apt-get install -y \
        build-essential \
        cmake \
        imagemagick \
        libboost-all-dev \
        libgts-dev \
        libjansson-dev \
        libtinyxml-dev \
        mercurial \
        nodejs \
        nodejs-legacy \
        npm \
        pkg-config \
        psmisc \
        ros-$ROS_DISTRO-gazebo7-ros-pkgs \
        xvfb && \

    # install gzweb
    hg clone https://bitbucket.org/osrf/gzweb -r default /gzweb && \
    bash -c "Xvfb -screen 0 1024x768x24 :1 >/dev/null 2>&1 & DISPLAY=:1 /gzweb/deploy.sh -m -t -c" && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
