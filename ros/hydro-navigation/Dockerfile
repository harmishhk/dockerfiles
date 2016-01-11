FROM harmishhk/ros:hydro-robot

# install ros-hydro-navigation
RUN apt-get update && \
    apt-get install -y \
    ros-hydro-navigation && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
