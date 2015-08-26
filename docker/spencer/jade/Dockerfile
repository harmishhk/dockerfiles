FROM harmishhk/ros:jade-robot

# install extra packages required by spencer
RUN apt-get update && \
    apt-get install -y \
    libmrpt-dev \
    mrpt-apps \
    freeglut3-dev \
    libsvm-dev \
    ros-jade-navigation \
    ros-jade-cmake-modules \
    ros-jade-joy \
    ros-jade-camera-info-manager \
    ros-jade-driver-base \
    ros-jade-polled-camera && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
