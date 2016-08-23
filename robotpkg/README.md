# robotpkg

[`ros-indigo-base`](https://hub.docker.com/r/harmish/ros/) plus [`robotpkg`](http://robotpkg.openrobots.org/) plus clone of [`robotpkg-wip`](http://robotpkg.openrobots.org/robotpkg-wip.html) repository

# Supported tags and respective `Dockerfile` links

- [`robotpkg`, `latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/robotpkg/robotpkg/Dockerfile)
- [`optitrack` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/robotpkg/optitrack/Dockerfile) adds [`optitrack-genom3`](https://git.openrobots.org/projects/optitrack-genom3) and [`optitrack_person`](https://github.com/harmishhk/optitrack_person) packages on the top of `robotpkg` image
- [`robotpkg-wo-ros` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/robotpkg/robotpkg-wo-ros/Dockerfile), using [`ubuntu:14.04`](https://hub.docker.com/_/ubuntu/) as base image, without [`ros-indigo-base`](https://hub.docker.com/r/harmish/ros/) installation

# Usage

```console
docker run -it --rm \
  -u "$(id -u):$(id -g)" \
  harmish/robotpkg:optitrack optitrack_person.launch mcast:=255.255.255.255
```

## Linked repositories

- [`ros`](https://hub.docker.com/_/ros/)
