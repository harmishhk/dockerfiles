# Use Ubuntu 22.04 base image (minimal)
FROM ubuntu:22.04

# Install dependencies and Rocker
# Setup ROS 2 repositories and install dependencies
RUN apt-get update && \
    apt-get install -y curl gnupg2 lsb-release && \
    curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add - && \
    sh -c 'echo "deb http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list' && \
    apt-get update && \
    apt-get install -y python3-rocker docker.io && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Set default command to Rocker
ENTRYPOINT ["rocker"]
