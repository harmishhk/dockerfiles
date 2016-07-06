FROM harmish/ros:{distro}-desktop-full

# install pr2 packages for ros
RUN apt-get update && \
    apt-get install -y \
        ros-$ROS_DISTRO-pr2-common \
        ros-$ROS_DISTRO-pr2-mechanism \
        ros-$ROS_DISTRO-pr2-navigation \
        ros-$ROS_DISTRO-pr2-pr2-tuckarm \
        ros-$ROS_DISTRO-pr2-teleop \
        ros-$ROS_DISTRO-pr2-simulator && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
