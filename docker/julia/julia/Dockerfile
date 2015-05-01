FROM julia

# install package dependencies
RUN apt-get update
RUN apt-get install -y git curl gettext libcairo2 libpango1.0-0

# add useful julia packages
RUN julia -e 'Pkg.add("Gadfly")' && \
    julia -e 'Pkg.add("Cairo")' && \
    julia -e 'Pkg.add("RDatasets")'
