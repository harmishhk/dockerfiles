FROM ubuntu

    # install texlive
RUN apt-get update && \
    apt-get install -y texlive-full && \

    # clean -up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME ["/latex"]
WORKDIR /latex
