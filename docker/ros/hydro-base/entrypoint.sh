#!/bin/bash

# return if cannot execute
set -e

# setup ros
source /opt/ros/$ROS_DISTRO/setup.bash ""

# setup master when asked
if [[ $1 == "-m" ]]
then
    export ROS_MASTER_URI=http://$2:11311
    shift 2
fi

# executre given command
exec "$@"
