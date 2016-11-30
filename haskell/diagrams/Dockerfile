FROM haskell

# install diagrams packages and their dependencies
RUN cabal update && \
    cabal install diagrams diagrams-pgf hlint SVGFonts && \
    apt-get update && \
    apt-get install -y inkscape && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
