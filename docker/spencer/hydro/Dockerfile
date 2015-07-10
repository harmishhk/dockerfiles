FROM harmishhk/ros:hydro-desktop

# install extra packages required by navigation
RUN apt-get update
RUN apt-get install -y \
    libmrpt-dev \
    mrpt-apps \
    freeglut3-dev \
    libsvm-dev \
    ros-hydro-navigation \
    ros-hydro-cmake-modules \
    ros-hydro-joy \
    ros-hydro-camera-info-manager \
    ros-hydro-driver-base \
    ros-hydro-polled-camera
