FROM ubuntu:14.04

# install necessities
RUN apt-get update
RUN apt-get install -y git build-essential

# install robotpkg
ENV HOME /root
ENV GIT_SSL_NO_VERIFY=true
RUN mkdir -p $HOME/openrobots/src && \
    git clone https://git.openrobots.org/robots/robotpkg.git $HOME/openrobots/src/robotpkg
RUN mkdir -p $HOME/openrobots/install && \
    sh $HOME/openrobots/src/robotpkg/bootstrap/bootstrap --prefix=${HOME}/openrobots/install

# clone robotpkg-wip packages
RUN git clone https://git.openrobots.org/robots/robotpkg/robotpkg-wip.git $HOME/openrobots/src/robotpkg/wip

# set up environ variables for robotpkg
ENV ROBOTPKG_BASE $HOME/openrobots/install
ENV PKG_CONFIG_PATH $PKG_CONFIG_PATH:$HOME/openrobots/install/lib/pkgconfig
ENV PATH $PATH:$HOME/openrobots/install/bin:$HOME/openrobots/install/sbin
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:$HOME/openrobots/install/lib

# update robotpkg configuration file
RUN echo "MAKE_JOBS= 8" >> $HOME/openrobots/install/etc/robotpkg.conf
