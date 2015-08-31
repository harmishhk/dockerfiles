FROM ubuntu:14.04

# install texlive
ADD http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz /tmp/
RUN apt-get update && \
    apt-get install -y wget && \
    mkdir /tmp/texlive && \
    tar -C /tmp/texlive --strip-components=1 -xvzf /tmp/install-tl-unx.tar.gz && \
    touch /tmp/texlive.profile && \
    /tmp/texlive/install-tl --profile=/tmp/texlive.profile && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# setup texlive
ENV PATH /usr/local/texlive/2015/bin/x86_64-linux:$PATH
ENV INFOPATH /usr/local/texlive/2015/texmf-dist/doc/info:$INFOPATH
ENV MANPATH /usr/local/texlive/2015/texmf-dist/doc/man:$MANPATH

VOLUME ["/latex"]
WORKDIR /latex
