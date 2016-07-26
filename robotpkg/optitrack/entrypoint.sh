#!/bin/bash

# return if cannot execute
set -e

# setup ros
source /opt/ros/$ROS_DISTRO/setup.bash ""
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROBOTPKG_BASE/share

# execute given command
exec "$@"
