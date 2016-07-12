FROM harmish/morse:ros

RUN apt-get update && \
    # install pr2 and naviagation packages
    apt-get install -y \
        ros-$ROS_DISTRO-navigation \
        ros-$ROS_DISTRO-gmapping \
        ros-$ROS_DISTRO-robot-state-publisher \
        ros-$ROS_DISTRO-pr2-common \
        ros-$ROS_DISTRO-pr2-controllers \
        ros-$ROS_DISTRO-pr2-mechanism \
        ros-$ROS_DISTRO-pr2-navigation \
        ros-$ROS_DISTRO-pr2-common-actions  \
        ros-$ROS_DISTRO-pr2-teleop && \

    # fix for tuck-arms
    chmod a+x /opt/ros/indigo/share/pr2_tuck_arms_action/tuck_arms_test.py && \

    # install morse-ros packages
    git clone https://github.com/harmishhk/morse_ros.git -b $MORSE_VERSION /catkin_ws/src/morse_ros && \
    bash -c "source /opt/ros/indigo/setup.bash && catkin_make -C /catkin_ws install" && \

    # clean-up
    rm -rf /catkin_ws/src /catkin_ws/build  /catkin_ws/devel && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# update entrypoint
COPY entrypoint.sh /entrypoint.sh
