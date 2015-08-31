FROM julia

# install package dependencies
RUN apt-get update && \
    apt-get install -y git curl gettext libcairo2 libpango1.0-0 && \

    # add useful julia packages
    julia -e 'Pkg.add("Gadfly")' && \
    julia -e 'Pkg.add("Cairo")' && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
