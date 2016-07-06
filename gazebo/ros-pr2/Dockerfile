FROM harmish/gazebo:ros

# install pr2-simulator
RUN apt-get update && \
    apt-get install -y \
        ros-$ROS_DISTRO-ros-control \
        ros-$ROS_DISTRO-pr2-controllers \
        ros-$ROS_DISTRO-pr2-dashboard-aggregator \
        ros-$ROS_DISTRO-pr2-teleop \
        ros-$ROS_DISTRO-stereo-image-proc && \
    git clone https://github.com/PR2/pr2_simulator -b $ROS_DISTRO-devel /pr2_ws/src/pr2_simulator && \
    bash -c "source /opt/ros/$ROS_DISTRO/setup.bash && catkin_make -DCMAKE_INSTALL_PREFIX=/opt/ros/$ROS_DISTRO -C /pr2_ws install" && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /pr2_ws
