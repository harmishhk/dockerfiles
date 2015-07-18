#!/usr/bin/zsh

# return if cannot execute
set -e

# setup ros
source /opt/ros/$ROS_DISTRO/setup.zsh

# build when asked
if [[ $1 == "build" ]]
then
    shift
    source /root/build_rosweb.sh
fi

# executre given command
exec "$@"
