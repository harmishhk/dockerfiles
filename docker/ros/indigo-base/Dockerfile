FROM    ubuntu:14.04

# install necessities
RUN apt-get update
RUN apt-get install -y wget

# setup source-list and keys
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list' && \
    apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116 && \
    apt-get update

# install ros-indigo base and initialize rosdep
RUN apt-get install -y ros-indigo-ros-base
RUN rosdep init

# update rosdep
RUN rosdep update

# setup ros for each login shell
RUN sh -c 'echo "source /opt/ros/indigo/setup.bash" >> ~/.bashrc'
