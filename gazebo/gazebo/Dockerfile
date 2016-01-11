FROM ubuntu:14.04
# FROM harmish/nvidia

# install common dependencies
RUN apt-get update
RUN apt-get install -y wget supervisor

# install gazebo
RUN sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list'
RUN wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
RUN apt-get update
RUN apt-get install -y gazebo5 libgazebo5-dev

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
