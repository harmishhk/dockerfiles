FROM ros:melodic-robot

# install ros-melodic-navigation
RUN apt-get update && \
    apt-get install -y \
    ros-melodic-navigation && \
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
