FROM harmish/julia:dev

# install Images.jl and VideoIO.jl packages
RUN apt-get update && \
    apt-get install -y imagemagick tcl8.5 tk8.5 libav-tools && \

    export JULIA_PKGDIR="/usr/local/julia/share/julia/site" && \
    julia -e 'Pkg.update()' && \
    julia -e 'Pkg.add("Images")' && \
    julia -e 'using Images' && \
    julia -e 'Pkg.add("VideoIO")' && \
    julia -e 'using VideoIO' && \

    # fix for permission-issue on compiled cache when running as non-root user
    #chmod -R a+rwx /usr/local/julia/share/julia/site/lib && \

    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
