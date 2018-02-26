FROM ubuntu:16.04

    # install stack
RUN apt-get update && apt-get install -y curl && \
    curl -sSL https://get.haskellstack.org/ | sh && \
    stack update

CMD [ "stack", "ghci" ]
