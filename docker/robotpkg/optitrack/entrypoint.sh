#!/usr/bin/zsh

# return if cannot execute
set -e

# setup ros
source /root/catkin_ws/install/setup.zsh
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROBOTPKG_BASE/share

# execute given command
exec "$@"
