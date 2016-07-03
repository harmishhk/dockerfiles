FROM harmish/ros:indigo-navigation

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
    pip3 install rospkg catkin-tools && \

    # install morse from source
    git clone https://github.com/morse-simulator/morse -b $morseb /morse/morse && \
    mkdir /morse/build /morse/install && \
    cd /morse/build && cmake ../morse -DCMAKE_INSTALL_PREFIX=/morse/install/$morseb && make install && \

    # install pr2 and naviagation packages
    apt-get install -y \
        ros-indigo-pr2-common \
        ros-indigo-pr2-controllers && \
    git clone https://github.com/harmishhk/morse_ros.git -b $morse /catkin_ws/src/morse_ros && \
    bash -c "source /opt/ros/indigo/setup.bash && catkin_make -C /catkin_ws install" && \

    # install morseweb
    git clone https://github.com/yarox/morseweb /morseweb && \
    cd /morseweb && pip3 install -r requirements.txt && \

    # clean-up
    rm -rf /morse/build /morse/morse && \
    rm -rf /catkin_ws/src /catkin_ws/build  /catkin_ws/devel && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \

    # set defaults
    echo "source /catkin_ws/install/setup.bash" >> /etc/bash.bashrc

# set-up morse
ENV MORSE_ROOT /morse/install/$morseb/
ENV PATH /morse/install/$morseb/bin:$PATH
ENV PYTHONPATH /morse/install/$morseb/lib/python3/dist-packages:$PYTHONPATH
ENV HEADLESS true
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["morse"]
