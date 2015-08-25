FROM ubuntu:14.04

# install dependencies
RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    git \
    pkg-config \
    libcairo2-dev \
    nodejs \
    nodejs-legacy \
    npm && \
    npm install -g grunt-cli && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.npm

COPY ./build_rosweb.sh /build_rosweb.sh
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash"]
