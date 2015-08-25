FROM harmishhk/ros:jade-navigation

# install ros-jade-desktop-full
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    ros-jade-desktop-full && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
