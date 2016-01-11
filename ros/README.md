# ros

[`ubuntu:14.04`](https://hub.docker.com/_/ubuntu/) plus [ROS](http://www.ros.org/) jade

#  Supported tags and respective `Dockerfile` links

- [`jade-base` , `latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-base/Dockerfile)
- [`jade-robot` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-robot/Dockerfile)
- [`jade-navigation` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-navigation/Dockerfile)
- [`jade-desktop-full` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-desktop-full/Dockerfile)
- [`indigo-base` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/indigo-base/Dockerfile)
- [`indigo-robot` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/indigo-robot/Dockerfile)
- [`indigo-navigation` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/indigo-navigation/Dockerfile)
- [`indigo-desktop-full` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/indigo-desktop-full/Dockerfile)
- [`hydro-base` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/hydro-base/Dockerfile), with [`ubuntu:12.04`](https://hub.docker.com/_/ubuntu/)
- [`hydro-robot` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/hydro-robot/Dockerfile), with [`ubuntu:12.04`](https://hub.docker.com/_/ubuntu/)
- [`hydro-navigation` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/hydro-navigation/Dockerfile), with [`ubuntu:12.04`](https://hub.docker.com/_/ubuntu/)
- [`hydro-desktop-full` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/ros/hydro-desktop-full/Dockerfile), with [`ubuntu:12.04`](https://hub.docker.com/_/ubuntu/)

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

- [`ubuntu`](https://hub.docker.com/_/ubuntu/)
