FROM harmish/julia:dev

RUN apt-get update && \
    # install scipy stack
    apt-get install -y \
        python-numpy \
        python-scipy \
        python-matplotlib \
        ipython \
        ipython-notebook \
        python-pandas \
        python-sympy \
        python-nose && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
