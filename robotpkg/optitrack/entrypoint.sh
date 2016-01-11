#!/bin/bash

# return if cannot execute
set -e

# setup ros
source /ros_ws/install/setup.bash ""
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROBOTPKG_BASE/share

# execute given command
exec "$@"
