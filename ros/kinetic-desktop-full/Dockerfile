FROM harmish/ros:kinetic-navigation

# install ros-kinetic-desktop-full
RUN apt-get update && \
    apt-get install -y \
    ros-kinetic-desktop-full && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
