#!/bin/bash

# return if cannot execute
set -e

ROSLIB_DIR=/roswebtools/roslibjs
ROS2D_DIR=/roswebtools/ros2djs
ROS3D_DIR=/roswebtools/ros3djs/utils
NAV2D_DIR=/roswebtools/nav2djs/utils

# build roslibjs
if [ -d "$ROSLIB_DIR" ]; then
    echo "building roslibjs\n"
    cd $ROSLIB_DIR && \
    npm install . && \
    grunt build --force
fi

# build ros2djs
if [ -d "$ROS2D_DIR" ]; then
    echo "building ros2djs\n"
    cd $ROS2D_DIR && \
    npm install . && \
    grunt build --force
fi

# build ros3djs
if [ -d "$ROS3D_DIR" ]; then
    echo "building ros3djs\n"
    cd $ROS3D_DIR && \
    npm install . && \
    grunt build --force
fi

# build nav2djs
if [ -d "$NAV2D_DIR" ]; then
    echo "building nav2djs\n"
    cd $NAV2D_DIR && \
    npm install . && \
    grunt build --force
fi
