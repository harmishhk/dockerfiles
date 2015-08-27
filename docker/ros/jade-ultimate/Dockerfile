FROM harmishhk/ros:jade-desktop-full

# install ros-indigo-desktop-full
RUN apt-get update && \
    apt-get install -y \
    ros-jade-hardware-interface \
    ros-jade-joint-limits-interface \
    ros-jade-gazebo-ros-control && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
