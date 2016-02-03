FROM harmish/ros:jade-desktop-full

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
    ros-jade-bfl \
    ros-jade-control-toolbox \
    ros-jade-driver-base \
    ros-jade-sound-play \
    ros-jade-joy && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
