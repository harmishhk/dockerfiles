FROM haskell

# install diagrams packages and their dependencies
RUN stack install diagrams && \

 # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
