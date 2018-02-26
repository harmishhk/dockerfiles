FROM harmish/node

COPY build_roswebtools.sh /build_roswebtools.sh

# install dependencies
RUN npm install -g grunt && \
    #
    # clean-up
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* ~/.npm

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["bash", "/entrypoint.sh"]
CMD ["bash"]
