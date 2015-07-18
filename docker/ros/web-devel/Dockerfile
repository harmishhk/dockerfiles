FROM ubuntu:14.04

# install dependencies
RUN apt-get update && \
    apt-get install -y \
    zsh \
    git \
    pkg-config \
    libcairo2-dev \
    nodejs \
    nodejs-legacy \
    npm && \
    npm install -g grunt-cli && \
    rm -rf ~/.npm ~/tmp

COPY ./build_rosweb.sh /root/build_rosweb.sh
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/usr/bin/zsh", "/entrypoint.sh"]
CMD ["/usr/bin/zsh"]
