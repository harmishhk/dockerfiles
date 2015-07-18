FROM harmishhk/ros:jade-desktop-full

# install rosbridge server and dependencies
RUN apt-get update
RUN apt-get install -y \
    ros-jade-rosbridge-server \
    ros-jade-speech-recognition-msgs \
    ros-jade-interactive-marker-proxy \
    ros-jade-moveit-msgs \
    ros-jade-tf2-web-republisher \
    ros-jade-move-base-msgs

# install robotwebtools dependencies
RUN apt-get update && \
    apt-get install -y \
    zsh \
    git \
    pkg-config \
    libcairo2-dev \
    nodejs \
    nodejs-legacy \
    npm && \
    npm install -g grunt-cli && \
    rm -rf ~/.npm ~/tmp

# setup rosbridge to launch at start
COPY ./build_rosweb.sh /root/build_rosweb.sh
COPY ./rosbridge.launch /root/rosbridge.launch
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/usr/bin/zsh", "/entrypoint.sh"]
CMD ["roslaunch", "/root/rosbridge.launch"]
