FROM harmishhk/ros:hydro-base

# install ros-hydro-robot
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    ros-hydro-robot && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
