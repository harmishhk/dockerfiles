FROM harmishhk/ros:jade-base

# install ros-jade-robot
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    ros-jade-robot && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
