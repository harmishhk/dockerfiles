FROM harmishhk/ros:indigo-desktop

# install extra packages required by spencer
RUN apt-get update
RUN apt-get install -y \
    libmrpt-dev \
    mrpt-apps \
    freeglut3-dev \
    libsvm-dev \
    ros-indigo-navigation \
    ros-indigo-cmake-modules \
    ros-indigo-joy \
    ros-indigo-camera-info-manager \
    ros-indigo-driver-base \
    ros-indigo-polled-camera
