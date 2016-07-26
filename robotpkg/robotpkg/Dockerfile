FROM ros:indigo-ros-base

# install robotpkg
ENV GIT_SSL_NO_VERIFY=true
RUN apt-get update && \

    # install dependencies
    apt-get install -y git && \

    # get and bootstrap robotpkg
    mkdir -p /openrobots/src && \
    git clone https://git.openrobots.org/robots/robotpkg.git /openrobots/src/robotpkg && \
    rm -rf /openrobots/src/robotpkg/.git && \
    mkdir -p /openrobots/install && \
    sh /openrobots/src/robotpkg/bootstrap/bootstrap --prefix=/openrobots/install && \

    # update robotpkg configuration file
    echo "MAKE_JOBS= 1" >> /openrobots/install/etc/robotpkg.conf && \
    echo "export ROS_PACKAGE_PATH=$ROS_PACKAGE_PATH:$ROBOTPKG_BASE/share" >> /etc/bash.bashrc

# set up environ variables for robotpkg
ENV ROBOTPKG_BASE /openrobots/install
ENV PKG_CONFIG_PATH $PKG_CONFIG_PATH:/openrobots/install/lib/pkgconfig
ENV PATH $PATH:/openrobots/install/bin:/openrobots/install/sbin
ENV LD_LIBRARY_PATH $LD_LIBRARY_PATH:/openrobots/install/lib
