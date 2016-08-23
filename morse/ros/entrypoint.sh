#!/bin/bash

# return if cannot execute
set -e

# setup ros
source "/opt/ros/$ROS_DISTRO/setup.bash"

# execute given command
if [[ "$HEADLESS" == true ]]
then
    echo "using xvfb screen"
    export DISPLAY=:1
    Xvfb -screen 0 1024x768x24 :1 >/dev/null 2>&1 & exec "$@"
else
    exec "$@"
fi
