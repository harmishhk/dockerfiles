#!/bin/bash

# return if cannot execute
set -e

# setup ros
source "/opt/ros/$ROS_DISTRO/setup.bash"
export CMAKE_INCLUDE_PATH="/opt/local/catch/include:$CMAKE_INCLUDE_PATH"

# executre given command
exec "$@"
