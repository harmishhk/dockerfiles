FROM ipython/scipystack

RUN apt-get update && \
    # install necessities
    apt-get install -y software-properties-common python-software-properties && \

    # install julia
    add-apt-repository ppa:staticfloat/juliareleases && \
    add-apt-repository ppa:staticfloat/julia-deps && \
    apt-get update && \
    apt-get install -y julia && \

    # add julia packages
    apt-get install -y curl gettext libcairo2 libpango1.0-0 && \
    julia -e 'Pkg.add("Gadfly")' && \
    julia -e 'Pkg.add("Cairo")' && \
    julia -e 'Pkg.add("PyCall")' && \
    julia -e 'Pkg.add("RDatasets")' && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["julia"]
