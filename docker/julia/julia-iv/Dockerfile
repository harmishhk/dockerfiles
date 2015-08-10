FROM harmishhk/julia:julia

# install Images.jl and VideoIO.jl packages
RUN apt-get install -y imagemagick tcl8.5 tk8.5 libav-tools
RUN julia -e 'Pkg.add("Images")' && \
    julia -e 'Pkg.add("VideoIO")'
