FROM harmishhk/ros:indigo-desktop-full

# install extra packages required by spencer
RUN apt-get update && \
    apt-get install -y \
    libmrpt-dev \
    mrpt-apps \
    freeglut3-dev \
    libsvm-dev \
    ros-indigo-joy && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
