FROM ros:indigo-ros-core

ARG morseb=1.4_STABLE

RUN apt-get update && \
    # install dependencies
    apt-get install -y git \
        blender \
        build-essential \
        python-dev \
        python3-dev \
        xvfb && \

    # install python3 version of rospkg, catkin-tools required by morse
    apt-get install -y python3-setuptools && \
    easy_install3 pip && \
    pip3 install rospkg catkin-tools && \

    # install morse from source
    git clone https://github.com/harmishhk/morse -b $morseb /tmp/morse && \
    mkdir /tmp/morse/build /morse && \
    cd /tmp/morse/build && cmake .. -DCMAKE_INSTALL_PREFIX=/morse && make install && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set-up morse
ENV MORSE_ROOT /morse
ENV PATH $PATH:/morse/bin
ENV HEADLESS true
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
CMD ["morse"]
