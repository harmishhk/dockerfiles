FROM node

    # install typescript
RUN npm install -g tsd tslint typescript && \
    mkdir -p /workspace/build && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /workspace
WORKDIR /workspace
