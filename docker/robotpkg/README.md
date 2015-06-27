# robotpkg

[ros-indigo-base](https://registry.hub.docker.com/u/harmishhk/ros/) + [robotpkg](http://robotpkg.openrobots.org/) + clone of [robotpkg-wip](http://robotpkg.openrobots.org/robotpkg-wip.html)

### tags

- robotpkg (```harmishhk/robotpkg:robotpkg```), default tag ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/robotpkg/robotpkg/Dockerfile))
- optitrack (```harmishhk/robotpkg:optitrack```), adds ```optitrack-genom3``` package ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/robotpkg/optitrack/Dockerfile))
- robotpkg (```harmishhk/robotpkg:robotpkg-wo-ros```), without [ros-indigo-base](https://registry.hub.docker.com/u/harmishhk/ros/) installation ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/robotpkg/robotpkg-wo-ros/Dockerfile))

### usage
```docker run -it --rm harmishhk/robotpkg:optitrack```

### linked repositories
[harmishhk/ros](https://registry.hub.docker.com/u/harmishhk/ros/)
