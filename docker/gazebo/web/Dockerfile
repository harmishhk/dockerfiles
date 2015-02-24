FROM ubuntu:14.04

# install common dependencies
RUN apt-get update
RUN apt-get install -y wget supervisor

# install node
RUN wget -qO- https://deb.nodesource.com/setup | bash -

# install gzweb dependencies
RUN apt-get update
RUN apt-get install -y libjansson-dev nodejs libboost-dev imagemagick libtinyxml-dev mercurial cmake build-essential psmisc

# install gazebo
RUN sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list'
RUN wget http://packages.osrfoundation.org/gazebo.key -O - | apt-key add -
RUN apt-get update
RUN apt-get install -y gazebo5 libgazebo5-dev

# install gzweb from repository
RUN cd ~ && \
    hg clone https://bitbucket.org/osrf/gzweb && \
    cd gzweb && \
    hg up gzweb_1.2.0

# deploy (downloading models from web, will take a lot of time)
RUN bash -c 'source /usr/share/gazebo/setup.sh'
RUN bash -c '~/gzweb/deploy.sh -m'
#RUN bash -c '~/gzweb/deploy.sh -m local'

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
