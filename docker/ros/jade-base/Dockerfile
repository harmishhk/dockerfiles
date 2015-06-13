FROM    ubuntu:14.04

# setup environment
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8

# setup source-list and keys
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116 && \
    apt-get update --fix-missing

# install ros-jade-desktop and initialize rosdep
RUN apt-get install -y ros-jade-ros-base python-catkin-tools
RUN rosdep init

# update rosdep
RUN rosdep update

# setup ros for each login shell
RUN sh -c 'echo "source /opt/ros/jade/setup.bash" >> ~/.bashrc'
