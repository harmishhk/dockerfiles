FROM harmish/haskell:haskelly

    # fix for texrunner version
RUN sed -i 's/.*extra-deps.*/extra-deps: [ texrunner-0.0.1.1 ]/' /root/.stack/global-project/stack.yaml && \

    # install diagrams packages and their dependencies
    stack install diagrams diagrams-pgf SVGFonts && \
    apt-get update && \
    apt-get install -y inkscape && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
