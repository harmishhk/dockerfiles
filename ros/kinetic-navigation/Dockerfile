FROM harmish/ros:kinetic-robot

# install ros-kinetic-navigation
RUN apt-get update && \
    apt-get install -y \
    ros-kinetic-navigation \
    gdbserver && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
