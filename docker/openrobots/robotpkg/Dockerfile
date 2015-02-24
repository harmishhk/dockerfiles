FROM ubuntu:14.04

# install necessities
RUN apt-get update
RUN apt-get install -y git build-essential

# install robotpkg
RUN export GIT_SSL_NO_VERIFY=true && \
    mkdir -p ~/openrobots/src && \
    git clone https://git.openrobots.org/robots/robotpkg.git ~/openrobots/src/robotpkg
RUN mkdir -p ~/openrobots/install && \
    sh ~/openrobots/src/robotpkg/bootstrap/bootstrap --prefix=${HOME}/openrobots/install
RUN echo "export ROBOTPKG_BASE=${HOME}/openrobots/install" >> ~/.bashrc
# install robotpkg-wip packages
RUN export GIT_SSL_NO_VERIFY=true && \
    git clone https://git.openrobots.org/robots/robotpkg/robotpkg-wip.git ~/openrobots/src/robotpkg/wip
