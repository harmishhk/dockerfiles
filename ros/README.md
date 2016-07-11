# ros

[ROS](http://www.ros.org/) kinetic with navigation-packages

#  Supported tags and respective `Dockerfile` links

- [`kinetic-navigation` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/kinetic-navigation/Dockerfile)
- [`kinetic-devel , `latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/kinetic-devel/Dockerfile)
- [`jade-navigation` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-navigation/Dockerfile)
- [`jade-devel (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-devel/Dockerfile)
- [`indigo-navigation` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/indigo-navigation/Dockerfile)
- [`indigo-devel` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/indigo-devel/Dockerfile)

# Usage

```console
docker run -it --rm \
  -u "$(id -u):$(id -g)" \
  -v $HOME/.ros:/.ros \
  -v $HOME/.config/catkin:/.config/catkin:ro \
  -v $(pwd):$(pwd) \
  -w $(pwd) \
  harmish/ros catkin build
```

- To use host networking, provide `--net=host` option

## Linked repositories

- [`ros`](https://hub.docker.com/_/ros/)
