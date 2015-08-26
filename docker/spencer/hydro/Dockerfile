FROM harmishhk/ros:hydro-robot

# install extra packages required by spencer
RUN apt-get update && \
    apt-get install -y \
    libmrpt-dev \
    mrpt-apps \
    freeglut3-dev \
    libsvm-dev \
    ros-hydro-navigation \
    ros-hydro-cmake-modules \
    ros-hydro-joy \
    ros-hydro-camera-info-manager \
    ros-hydro-driver-base \
    ros-hydro-polled-camera && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
