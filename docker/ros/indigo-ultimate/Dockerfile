FROM harmishhk/ros:indigo-desktop-full

# install ros-indigo-desktop-full
RUN apt-get update && \
    apt-get install -y \
    ros-indigo-hardware-interface \
    ros-indigo-joint-limits-interface \
    ros-indigo-gazebo-ros-control && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
