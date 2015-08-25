FROM harmishhk/ros:indigo-navigation

# install ros-indigo-desktop-full
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    ros-indigo-desktop-full && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
