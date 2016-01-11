FROM harmish/ros:jade-robot

RUN apt-get update && \
    # install dependencies
    apt-get install -y git \
        build-essential \
        python-dev \
        python3-dev \
        blender \
        xvfb && \

    # install python3 version of rospkg, catkin-tools required by morse
    apt-get install -y python3-setuptools && \
    easy_install3 pip && \
    pip3 install rospkg catkin-tools && \

    # install morse from source
    mkdir /morse /morse/build /morse/install && \
    cd /morse && git clone https://github.com/morse-simulator/morse -b 1.3_STABLE && \
    cd /morse/build && cmake ../morse -DCMAKE_INSTALL_PREFIX=/morse/install/1.3 && make install && \
    mkdir /.morse && chmod a+rw /.morse && \

    # clean-up
    rm -rf /morse/build /morse/morse && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set-up morse
ENV PATH $PATH:/morse/install/1.3/bin
ENV HEADLESS true
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["morse"]
