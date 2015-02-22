
### info
- the graphics driver in the docker container must be the same as on the host system.

### build
- download and copy Nvidia driver to this directory and rename it to ```nvidia.run```.
```docker build -t harmishhk/nvidia .```

### run
```docker run -i -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -t harmishhk/nvidia /bin/bash```

## references
1. https://github.com/gklingler/docker3d
2. http://fabiorehm.com/blog/2014/09/11/running-gui-apps-with-docker
3. http://gernotklingler.com/blog/howto-get-hardware-accelerated-opengl-support-docker
