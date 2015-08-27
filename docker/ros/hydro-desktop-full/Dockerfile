FROM harmishhk/ros:hydro-navigation

# install ros-hydro-desktop-full
RUN apt-get update && \
    apt-get install -y \
    ros-hydro-desktop-full && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
