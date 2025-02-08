# syntax=docker/dockerfile:1
FROM ubuntu:24.04

    # install texlive
RUN apt-get update && apt-get upgrade -y && apt-get autoremove -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y biber inkscape texlive-full wget && \
    #
    # clean -up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/latex"]
WORKDIR /latex
