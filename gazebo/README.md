# gazebo

[`ubuntu:14.04`](https://hub.docker.com/_/ubuntu/) plus [ROS](http://www.ros.org/) indigo plus [gazebo](http://gazebosim.org/) 7.2

#  Supported tags and respective `Dockerfile` links

- [`ros` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/gazebo/ros/Dockerfile)
- [`ros-pr2` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/gazebo/ros-pr2/Dockerfile)

# Usage

```console
docker run -it --rm \
    harmish/gazebo:ros
```

- For setting ports for gzweb, ```docker run -i -p 8080:8080 -p 7681:7681 -t harmish/gazebo:ros```.
- For using host display you can use, ```docker run -i -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -t harmish/gazebo```.

### References
https://github.com/osrf/docker_images
