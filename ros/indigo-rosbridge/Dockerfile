FROM ros:indigo-ros-core

    # install rosbridge
RUN apt-get update && \
    apt-get install -y ros-indigo-rosbridge-suite && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# setup new cmd to launch rosbridge
CMD ["roslaunch" "rosbridge_server" "rosbridge_websocket.launch"]
