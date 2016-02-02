FROM julia

ENV JULIA_PKGDIR /usr/local/julia/share/julia/site

# install package dependencies
RUN apt-get update && \
    apt-get install -y git curl gettext libcairo2 libpango1.0-0 && \

    # add useful julia packages
    julia -e 'Pkg.init()' && \
    julia -e 'Pkg.add("Gadfly")' && \
    julia -e 'Pkg.add("Cairo")' && \
    julia -e 'using Gadfly' && \
    julia -e 'Pkg.add("DataFrames")' && \
    julia -e 'using DataFrames' && \

    # fix for permission-issue on compiled cache
    chmod -R a+rwx /usr/local/julia/share/julia/site/lib && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
