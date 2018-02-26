FROM harmish/ros:indigo-desktop-full

# install extra packages required by spencer
RUN apt-get update && \
    apt-get install -y \
    libmrpt-dev \
    mrpt-apps \
    freeglut3-dev \
    libsvm-dev \
    libsdl-image1.2-dev \
    libpcap-dev \
    libgsl0-dev \
    ros-indigo-bfl \
    ros-indigo-control-toolbox \
    ros-indigo-driver-base \
    ros-indigo-sound-play \
    ros-indigo-joy \
    ros-indigo-yocs-cmd-vel-mux && \
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
