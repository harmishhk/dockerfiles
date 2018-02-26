FROM harmish/haskell:tools

    # fix for bad-specific dependency versions
RUN grep -q '^allow-newer:' /root/.stack/config.yaml && \
    sed -i 's/^allow-newer:.*/allow-newer: true/' /root/.stack/config.yaml || \
    echo '\nallow-newer: true' >> /root/.stack/config.yaml && \
    #
    # install diagrams packages and their dependencies
    stack install diagrams diagrams-pgf SVGFonts texrunner && \
    apt-get update && \
    apt-get install -y inkscape && \
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
