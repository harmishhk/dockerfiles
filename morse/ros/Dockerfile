FROM harmish/ros:indigo-robot

ARG morseb=1.4_STABLE

RUN apt-get update && \
    # install dependencies
    apt-get install -y \
        blender \
        git \
        python-dev \
        python3-dev \
        redis-server \
        xvfb && \

    # install python3 version of rospkg, catkin-tools required by morse
    apt-get install -y python3-setuptools && \
    easy_install3 pip && \
    pip3 install rospkg && \

    # install morse from source
    git clone https://github.com/morse-simulator/morse -b $morseb /morse/morse && \
    mkdir /morse/build /morse/install && \
    cd /morse/build && cmake ../morse -DCMAKE_INSTALL_PREFIX=/morse/install/$morseb && make install && \

    # install morseweb
    git clone https://github.com/yarox/morseweb /morseweb && \
    cd /morseweb && pip3 install -r requirements.txt && \

    # clean-up
    rm -rf /morse/build /morse/morse && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set-up morse
ENV MORSE_ROOT /morse/install/$morseb/
ENV PATH /morse/install/$morseb/bin:$PATH
ENV PYTHONPATH /morse/install/$morseb/lib/python3/dist-packages:$PYTHONPATH
ENV HEADLESS true
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["morse"]
