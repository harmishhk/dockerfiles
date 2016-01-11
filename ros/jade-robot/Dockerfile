FROM harmishhk/ros:jade-base

# install ros-jade-robot
RUN apt-get update && \
    apt-get install -y \
    ros-jade-robot && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
