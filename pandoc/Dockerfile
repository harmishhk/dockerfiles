FROM harmish/latex

RUN apt-get update && \
    apt-get install -y curl gdebi wget && \

    # install pandoc
    LATEST_PANDOC_VERSION=$(curl -L -s -H 'Accept: application/json' https://github.com/jgm/pandoc/releases/latest | sed -e 's/.*"tag_name":"\([^"]*\)".*/\1/') && \
    wget -O /tmp/pandoc.deb https://github.com/jgm/pandoc/releases/download/$LATEST_PANDOC_VERSION/pandoc-$LATEST_PANDOC_VERSION-1-amd64.deb && \
    gdebi -n /tmp/pandoc.deb && \

    # clean -up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD pandoc --version
