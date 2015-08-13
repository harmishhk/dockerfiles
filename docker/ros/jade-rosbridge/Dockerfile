FROM harmishhk/ros:jade-navigation

# install rosbridge
RUN apt-get update && \
    apt-get install -y ros-jade-rosbridge-server

# clean up
RUN rm -rf /var/lib/apt/lists/*

# setup new entrypoint and cmd
COPY ./entrypoint.sh /entrypoint.sh
