FROM harmishhk/ros:indigo-desktop

# update package list
RUN apt-get update

# install robotpkg
ENV GIT_SSL_NO_VERIFY=true
RUN mkdir -p ~/openrobots/src && \
    git clone https://git.openrobots.org/robots/robotpkg.git ~/openrobots/src/robotpkg
RUN mkdir -p ~/openrobots/install && \
    sh ~/openrobots/src/robotpkg/bootstrap/bootstrap --prefix=${HOME}/openrobots/install

# clone robotpkg-wip packages
RUN git clone https://git.openrobots.org/robots/robotpkg/robotpkg-wip.git ~/openrobots/src/robotpkg/wip

# set up environ variables for robotpkg
ENV HOME /root
ENV ROBOTPKG_BASE $HOME/openrobots/install
ENV PKG_CONFIG_PATH $PKG_CONFIG_PATH:$HOME/openrobots/install/lib/pkgconfig
ENV PATH $PATH:$HOME/openrobots/install/bin:$HOME/openrobots/install/sbin
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:$HOME/openrobots/install/lib

# update robotpkg configuration file
RUN echo "MAKE_JOBS= 8" >> ~/openrobots/install/etc/robotpkg.conf
