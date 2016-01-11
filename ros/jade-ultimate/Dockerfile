FROM harmish/ros:jade-desktop-full

RUN apt-get update && \
    apt-get install -y \

    # # dependencies needed by pmb2 simulation
    # ros-jade-hardware-interface \
    # ros-jade-joint-limits-interface \
    # ros-jade-gazebo-ros-control \

    # dependencies needed by riskrrt
    libgsl0-dev \
    libnewmat10-dev && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
