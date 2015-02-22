## gazebo 5.0 with ros-indigo and gzweb

### build
```docker build -t harmishhk/gazebo:web-ros .```

### run
```docker run -i -p 8080:8080 -p 7681:7681 -t harmishhk/gazebo:web-ros /bin/bash```

```docker run -i -e DISPLAY -p 8080:8080 -p 7681:7681 -v /tmp/.X11-unix:/tmp/.X11-unix -t harmishhk/gazebo:web-ros /bin/bash```
