FROM harmish/ros:kinetic-base

# install ros-kinetic-robot
RUN apt-get update && \
    apt-get install -y \
    ros-kinetic-robot && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
