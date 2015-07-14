FROM ubuntu:14.04

# install dependencies
RUN apt-get update
RUN apt-get install -y git \
    cmake \
    build-essential \
    pkg-config \
    python-dev \
    python3-dev \
    blender

# install morse from source
ENV HOME /root
RUN mkdir $HOME/morse $HOME/morse/build ~/morse/install
RUN cd $HOME/morse && git clone https://github.com/morse-simulator/morse -b 1.3_STABLE
RUN cd $HOME/morse/build && cmake ../morse -DCMAKE_INSTALL_PREFIX=$HOME/morse/install/1.3 && make install
ENV PATH $PATH:$HOME/morse/install/1.3/bin

# set-up headless mode
ENV HEADLESS true
RUN apt-get install -y xvfb
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash"]
