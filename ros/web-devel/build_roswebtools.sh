#!/bin/bash

# return if cannot execute
set -e

# build roslibjs
echo "building roslibjs\n"
cd /roswebtools/roslibjs/ && \
npm install . && \
grunt build --force

# build ros2djs
echo "building ros2djs\n"
cd /roswebtools/ros2djs/ && \
npm install . && \
grunt build --force

# build ros3djs
echo "building ros3djs\n"
cd /roswebtools/ros3djs/utils/ && \
npm install . && \
grunt build --force

# build nav2djs
echo "building nav2djs\n"
cd /roswebtools/nav2djs/utils/ && \
npm install . && \
grunt build --force
