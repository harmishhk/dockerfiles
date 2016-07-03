FROM ubuntu:14.04

ARG morseb=1.4_STABLE

RUN apt-get update && \
    # install dependencies
    apt-get install -y \
        blender \
        build-essential \
        cmake \
        git \
        python-dev \
        python-pip \
        python3-dev \
        redis-server \
        xvfb && \

    # install morse from source
    git clone https://github.com/morse-simulator/morse -b $morseb /morse/morse && \
    mkdir /morse/build /morse/install && \
    cd /morse/build && cmake ../morse -DBUILD_ROS_SUPPORT=OFF -DCMAKE_INSTALL_PREFIX=/morse/install/$morseb && make install && \
    mkdir /.morse && chmod a+rw /.morse && \

    # install morseweb
    git clone https://github.com/yarox/morseweb /morseweb && \
    cd /morseweb && pip install -r requirements.txt && \

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
