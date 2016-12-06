#!/bin/bash

# return if cannot execute
set -e

# setup ros
source "/opt/ros/$ROS_DISTRO/setup.bash" ""

# execute given command
exec "$@"
