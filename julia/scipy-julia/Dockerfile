FROM ipython/scipystack

RUN apt-get update && \
    # install dependencies
    apt-get install -y software-properties-common python-software-properties && \

    # install julia
    add-apt-repository ppa:staticfloat/juliareleases && \
    add-apt-repository ppa:staticfloat/julia-deps && \
    apt-get update && \
    apt-get install -y julia && \

    # add julia packages
    apt-get install -y curl gettext libcairo2 libpango1.0-0 && \
    export JULIA_PKGDIR="/usr/local/julia/share/julia/site" && \
    julia -e 'Pkg.init()' && \
    julia -e 'Pkg.add("Gadfly")' && \
    julia -e 'Pkg.add("Cairo")' && \
    julia -e 'using Gadfly' && \
    julia -e 'Pkg.add("DataFrames")' && \
    julia -e 'using DataFrames' && \
    julia -e 'Pkg.add("PyCall")' && \
    julia -e 'using PyCall' && \
    julia -e 'Pkg.add("RDatasets")' && \
    julia -e 'using RDatasets' && \

    # fix for permission-issue on compiled cache when running as non-root user
    #chmod -R a+rwx /usr/local/julia/share/julia/site/lib && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["julia"]
