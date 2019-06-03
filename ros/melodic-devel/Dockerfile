FROM harmish/ros:melodic-navigation

    # install gdbserver
RUN apt-get update && \
    apt-get install -y \
        gdbserver && \
    #
    # TODO: install Catch2, and updated catkin, catkin_pkg
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#ENV CMAKE_INCLUDE_PATH /opt/local/catch/include:$CMAKE_INCLUDE_PATH
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
CMD ["bash"]
