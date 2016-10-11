FROM haskell

# install diagrams packages and their dependencies
RUN stack install hlint diagrams SVGFonts && \

 # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
