FROM harmishhk/ros:indigo-robot

# install extra packages required by spencer
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    libmrpt-dev \
    mrpt-apps \
    freeglut3-dev \
    libsvm-dev \
    ros-indigo-navigation \
    ros-indigo-cmake-modules \
    ros-indigo-joy \
    ros-indigo-camera-info-manager \
    ros-indigo-driver-base \
    ros-indigo-polled-camera && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
