FROM harmish/ros:indigo-base

# install ros-indigo-robot
RUN apt-get update && \
    apt-get install -y \
    ros-indigo-robot && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
