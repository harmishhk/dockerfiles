#!/bin/bash

# return if cannot execute
set -e

ROSLIB_DIR="${ROSLIB_DIR:=/roswebtools/roslibjs}"
ROS2D_DIR="${ROS2D_DIR:=/roswebtools/ros2djs}"
ROS3D_DIR="${ROS3D_DIR:=/roswebtools/ros3djs/utils}"
NAV2D_DIR="${NAV2D_DIR:=/roswebtools/nav2djs/utils}"

if [ $# -eq 0 ]; then
    BUILD_LIBS=(roslibjs ros2djs ros3djs nav2djs)
else
    BUILD_LIBS="$@"
fi

for BUILD_LIB in ${BUILD_LIBS[@]}
do
    case $BUILD_LIB in
        "roslibjs")
            # build roslibjs
            if [ -d "$ROSLIB_DIR" ]; then
                echo "building roslibjs\n"
                cd $ROSLIB_DIR && \
                npm install . && \
                grunt build --force
            else
                echo "$ROSLIB_DIR not found"
            fi
            ;;

        "ros2djs")
            # build ros2djs
            if [ -d "$ROS2D_DIR" ]; then
                echo "building ros2djs\n"
                cd $ROS2D_DIR && \
                npm install . && \
                grunt build --force
            else
                echo "$ROS2D_DIR not found"
            fi
            ;;

        "ros3djs")
            # build ros3djs
            if [ -d "$ROS3D_DIR" ]; then
                echo "building ros3djs\n"
                cd $ROS3D_DIR && \
                npm install . && \
                grunt build --force
            else
                echo "$ROS3D_DIR not found"
            fi
            ;;

        "nav2djs")
            # build nav2djs
            if [ -d "$NAV2D_DIR" ]; then
                echo "building nav2djs\n"
                cd $NAV2D_DIR && \
                npm install . && \
                grunt build --force
            else
                echo "$NAV2D_DIR not found"
            fi
            ;;

        *)
            echo "I do not know how to make $BUILD_LIB"
            echo "Options are: roslibjs, ros2djs, ros3djs and nav2djs"
            ;;
    esac

done
