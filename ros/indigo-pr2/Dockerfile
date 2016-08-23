FROM harmish/ros:indigo-devel

    # install pr2 packages for ros
RUN apt-get update && \
    apt-get install -y \
        ros-$ROS_DISTRO-pr2-common \
        ros-$ROS_DISTRO-pr2-controllers \
        ros-$ROS_DISTRO-pr2-mechanism \
        ros-$ROS_DISTRO-pr2-navigation \
        ros-$ROS_DISTRO-pr2-tuckarm \
        ros-$ROS_DISTRO-pr2-teleop \
        ros-$ROS_DISTRO-pr2-common-actions && \

    # fix for tuck-arms
    git clone https://github.com/harmishhk/pr2_common_actions.git -b indigo-devel /pr2_ws/src/pr2_common_actions && \
    bash -c "source /opt/ros/indigo/setup.bash && catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/indigo -C /pr2_ws install" && \

    # clean-up
    rm -rf /pr2_ws /var/lib/apt/lists/* /tmp/* /var/tmp/*
