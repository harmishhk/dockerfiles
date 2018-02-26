FROM scratch

# install nvidia driver
ADD nvidia.run /tmp/nvidia.run
RUN apt-get update && \
    apt-get install -y x-window-system mesa-utils binutils module-init-tools && \
    sh /tmp/nvidia.run -a -N --ui=none --no-kernel-module && \
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
