FROM ros:indigo-ros-core

    # install rosbridge
RUN apt-get update && \
    apt-get install -y \
        ros-indigo-rosbridge-suite \
        ros-indigo-tf2-web-republisher && \
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# setup new cmd to launch rosbridge
CMD ["roslaunch" "rosbridge_server" "rosbridge_websocket.launch"]
