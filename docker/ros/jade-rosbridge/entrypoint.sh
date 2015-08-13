#!/usr/bin/zsh

# return if cannot execute
set -e

# setup ros
source /opt/ros/$ROS_DISTRO/setup.zsh

# start rosbridge
roslaunch rosbridge_server rosbridge_websocket.launch
