#!/bin/bash

# return if cannot execute
set -e

# setup ros
source /ros_ws/install/setup.bash
export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROBOTPKG_BASE/share

if [[ $1 == "-m" ]]
then
    export ROS_MASTER_URI=http://$2:11311
    shift 2
fi

# execute given command
exec "$@"
