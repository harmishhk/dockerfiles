FROM harmishhk/ros:indigo-navigation

# install dependencies
RUN apt-get update
RUN apt-get install -y python-dev \
    python3-dev \
    blender

# install morse from source
ENV HOME /root
RUN mkdir $HOME/morse $HOME/morse/build ~/morse/install
RUN cd $HOME/morse && git clone https://github.com/morse-simulator/morse -b 1.3_STABLE
RUN cd $HOME/morse/build && cmake ../morse -DCMAKE_INSTALL_PREFIX=$HOME/morse/install/1.3 && make install
ENV PATH $PATH:$HOME/morse/install/1.3/bin

# install python3 version of rospkg, catkin-tools required by morse
RUN apt-get install -y python3-setuptools
RUN easy_install3 pip
RUN pip3 install rospkg catkin-tools

# install pr2 and naviagation packages
RUN apt-get update
RUN apt-get install -y \
    ros-indigo-pr2-common \
    ros-indigo-pr2-controllers
RUN mkdir -p /root/catkin_ws/src && \
    git clone -b 1.3 https://github.com/harmishhk/morse_ros.git /root/catkin_ws/src/morse_ros && \
    zsh -c "source /opt/ros/indigo/setup.zsh && catkin_make -C /root/catkin_ws install"

# set-up headless mode
ENV HEADLESS true
RUN apt-get install -y xvfb
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/usr/bin/zsh", "/entrypoint.sh"]
CMD ["/usr/bin/zsh"]
