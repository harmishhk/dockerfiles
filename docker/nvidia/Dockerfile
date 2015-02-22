FROM ubuntu:14.04

# install nvidia driver
RUN apt-get update
RUN apt-get install -y mesa-utils binutils
ADD nvidia.run /tmp/nvidia.run
RUN sh /tmp/nvidia.run -a -N --ui=none --no-kernel-module
RUN rm /tmp/nvidia.run
