FROM ros:jade-robot

# install ros-jade-navigation
RUN apt-get update && \
    apt-get install -y \
    ros-jade-navigation \
    ros-jade-gmapping && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
