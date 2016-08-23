# MORSE

[`ubuntu:14.04`](https://hub.docker.com/_/ubuntu/) plus [MORSE](https://www.openrobots.org/wiki/morse) simulator (v 1.4) plus [ROS](http://www.ros.org/)

#  Supported tags and respective `Dockerfile` links

- [`morse`, `latest`(*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/morse/morse/Dockerfile)
- [`ros` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/morse/ros/Dockerfile), with [`harmish/ros:indigo-navigation`](https://hub.docker.com/r/harmish/ros/)
- [`ros-pr2` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/morse/ros-pr2/Dockerfile), with [`harmish/ros:indigo-navigation`](https://hub.docker.com/r/harmish/ros/) and [PR2 robot](http://wiki.ros.org/Robots/PR2) related packages

# Usage

```console
docker run --rm -it             `# remove container after use` \
    harmish/morse:morse $@      `# run morse with given arguments`
```

- By default `morse` will run in [*headless*](https://sympa.laas.fr/sympa/arc/morse-users/2013-10/msg00105.html) mode, to disable use use environment variable `-e "HEADLESS=false"`
- To run `morse` with screen you may need to add `-e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix`

## Linked repositories

- [`ros`](https://hub.docker.com/_/ros/)
