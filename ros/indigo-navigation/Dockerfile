FROM ros:indigo-robot

# install ros-indigo-navigation
RUN apt-get update && \
    apt-get install -y \
        ros-indigo-navigation \
        ros-indigo-gmapping && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
