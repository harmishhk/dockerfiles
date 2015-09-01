FROM harmishhk/ros:indigo-desktop-full

RUN apt-get update && \
    apt-get install -y \

    # dependencies needed by pmb2 simulation
    ros-indigo-hardware-interface \
    ros-indigo-joint-limits-interface \
    ros-indigo-gazebo-ros-control \

    # dependencies needed by riskrrt
    libgsl0-dev \
    libnewmat10-dev && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
