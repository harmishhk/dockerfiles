#!/bin/bash

# return if cannot execute
set -e

# build roslibjs
echo "building roslibjs\n"
cd /root/ros/web/roslibjs/ && \
npm install --unsafe-perm . && \
grunt build --force

# build ros2djs
echo "building ros2djs\n"
cd /root/ros/web/ros2djs/ && \
npm install --unsafe-perm . && \
grunt build --force

# build ros3djs
echo "building ros3djs\n"
cd /root/ros/web/ros3djs/utils/ && \
npm install --unsafe-perm . && \
grunt build --force

# build nav2djs
echo "building nav2djs\n"
cd /root/ros/web/nav2djs/utils/ && \
npm install --unsafe-perm . && \
grunt build --force
