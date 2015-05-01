FROM ubuntu:12.04

# install necessities
RUN apt-get update
RUN apt-get install -y wget

# setup source-list and keys
RUN sh -c 'echo "deb http://packages.ros.org/ros/ubuntu precise main" > /etc/apt/sources.list.d/ros-latest.list' && \
    wget --no-check-certificate https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -O - | apt-key add - && \
    apt-get update

# install ros-hydro base and initialize rosdep
RUN apt-get install -y ros-hydro-desktop-full python-rosinstall python-catkin-tools
RUN rosdep init

# update rosdep
RUN rosdep update

# setup ros for each login shell
RUN sh -c 'echo "source /opt/ros/hydro/setup.bash" >> ~/.bashrc'
