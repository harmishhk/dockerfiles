FROM harmish/morse:ros

ARG morseb=1.4_STABLE

RUN apt-get update && \
    # install pr2 and naviagation packages
    apt-get install -y \
        ros-$ROS_DISTRO-pr2-common \
        ros-$ROS_DISTRO-pr2-controllers \
        ros-$ROS_DISTRO-pr2-mechanism \
        ros-$ROS_DISTRO-pr2-navigation \
        ros-$ROS_DISTRO-pr2-tuckarm \
        ros-$ROS_DISTRO-pr2-teleop && \
    pip install catkin_pkg && \

    # install morse-ros packages
    git clone https://github.com/harmishhk/morse_ros.git -b $morseb /catkin_ws/src/morse_ros && \
    bash -c "source /opt/ros/indigo/setup.bash && catkin_make -C /catkin_ws install" && \

    # clean-up
    rm -rf /catkin_ws/src /catkin_ws/build  /catkin_ws/devel && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set-up morse
ENV MORSE_ROOT /morse
ENV MORSE_RESOURCE_PATH /morse/
ENV PATH /miniconda/bin:/morse/bin/:$PATH
ENV HEADLESS true
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
