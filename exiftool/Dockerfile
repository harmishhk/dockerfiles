FROM perl

ARG EXIFTOOL_VERSION=13.02

RUN mkdir /exiftool && \
    cd /exiftool && \
    wget -O Image-ExifTool-${EXIFTOOL_VERSION}.tar.gz https://exiftool.org/Image-ExifTool-${EXIFTOOL_VERSION}.tar.gz && \
    tar -xzf Image-ExifTool-${EXIFTOOL_VERSION}.tar.gz && \
    cd Image-ExifTool-${EXIFTOOL_VERSION} && \
    perl Makefile.PL && \
    make install && \
    rm -rf /exiftool

WORKDIR /photos

CMD ["exiftool"]
