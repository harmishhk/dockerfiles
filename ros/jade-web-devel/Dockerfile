FROM harmish/ros:jade-base

# install rosbridge server and ros-dependencies
RUN apt-get update && \
    apt-get install -y \
    ros-jade-rosbridge-server \
    ros-jade-speech-recognition-msgs \
    ros-jade-interactive-marker-proxy \
    ros-jade-moveit-msgs \
    ros-jade-tf2-web-republisher \
    ros-jade-move-base-msgs && \

    # install other dependencies
    git \
    pkg-config \
    libcairo2-dev \
    nodejs \
    nodejs-legacy \
    npm && \
    npm install -g grunt-cli && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.npm

# setup rosbridge to launch at start
COPY ./build_rosweb.sh /build_rosweb.sh
COPY ./rosbridge.launch /rosbridge.launch
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["roslaunch", "/rosbridge.launch"]
