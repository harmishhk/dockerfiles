FROM rocker/hadleyverse

RUN echo "root:root" | chpasswd && \
    echo 'auth-minimum-user-id=0' >> /etc/rstudio/rserver.conf
