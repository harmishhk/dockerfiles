FROM ubuntu

RUN apt-get update && \
    apt-get install -y gnuplot5 && \

    # clean -up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD gnuplot
