## gazebo 5.0

### build
```docker build -t harmishhk/gazebo:standalone .```

### run
```docker run -i -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -t harmishhk/gazebo:standalone```
```docker run -i -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -t harmishhk/gazebo:standalone /bin/bash```

### references
https://github.com/CognitiveRobotics/omnimapper/blob/master/docker/dox/Dockerfile
