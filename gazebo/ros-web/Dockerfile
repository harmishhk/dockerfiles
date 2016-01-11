FROM harmish/ros:jade-desktop-full

# install gzweb dependencies
RUN apt-get update
RUN apt-get install -y libjansson-dev nodejs npm libboost-dev imagemagick libtinyxml-dev mercurial cmake build-essential supervisor

# a fix for problem in gazebo_ros package, see https://github.com/ros-simulation/gazebo_ros_pkgs/issues/323
RUN apt-get install -y libgazebo5-dev

# another fix for node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# install gzweb by cloning from repository
RUN cd ~ && \
    hg clone https://bitbucket.org/osrf/gzweb && \
    cd gzweb && \
    hg up gzweb_1.2.0

# deploy models (downloading models from web, will take a lot of time)
RUN bash -c 'source /usr/share/gazebo/setup.sh'
RUN bash -c '~/gzweb/deploy.sh -m'

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
