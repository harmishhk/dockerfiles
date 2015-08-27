FROM harmishhk/ros:jade-robot

# install ros-jade-navigation
RUN apt-get update && \
    apt-get install -y \
    ros-jade-navigation && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
