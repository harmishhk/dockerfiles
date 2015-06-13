FROM ubuntu:14.04
# FROM harmishhk/nvidia

# install common dependencies
RUN apt-get update
RUN apt-get install -y wget supervisor

# install gazebo
RUN sh -c 'echo "deb http://packages.osrfoundation.org/gazebo/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-latest.list'
RUN wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
RUN apt-get update
RUN apt-get install -y gazebo5 libgazebo5-dev

# fix qt related x server errors
RUN echo "export QT_X11_NO_MITSHM=1" >> ~/.bashrc

# install additional tools
RUN apt-get install -y vim tmux git

COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord"]
