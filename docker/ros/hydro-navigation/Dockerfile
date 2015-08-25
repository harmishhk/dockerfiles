FROM harmishhk/ros:hydro-robot

# install ros-hydro-navigation
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    ros-hydro-navigation && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
