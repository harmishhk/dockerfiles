#!/usr/bin/zsh

# return if cannot execute
set -e

# setup ros
source /opt/ros/$ROS_DISTRO/setup.zsh

# executre given command
exec "$@"
