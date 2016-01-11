FROM harmish/ros:hydro-desktop-full

# installing pre-requisites for hpp
RUN apt-get install -y \
    ros-hydro-pr2-robot \
    ros-hydro-libccd \
    ros-hydro-srdfdom \
    asciidoc \
    source-highlight \
    git \
    libomniorb4-dev \
    omniorb-nameserver \
    omniidl \
    omniidl-python

# install hpp
RUN export DEVEL_DIR=/root/hpp
RUN wget -O $DEVEL_DIR/config.sh https://raw.githubusercontent.com/humanoid-path-planner/hpp-doc/master/doc/config.sh
RUN cd $DEVEL_DIR && /bin/bash source $DEVEL_DIR/config.sh
