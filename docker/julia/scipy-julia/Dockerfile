FROM ipython/scipystack

# install necessities
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties

# install julia
RUN add-apt-repository ppa:staticfloat/juliareleases && \
    add-apt-repository ppa:staticfloat/julia-deps
RUN apt-get update
RUN apt-get install -y julia

# add julia packages
RUN apt-get install -y \
    curl gettext libcairo2 libpango1.0-0
RUN julia -e 'Pkg.add("Gadfly")' && \
    julia -e 'Pkg.add("Cairo")' && \
    julia -e 'Pkg.add("PyCall")' && \
    julia -e 'Pkg.add("RDatasets")'
