# gazebo

[ubuntu 14.04](http://www.ubuntu.com/) + [gazebo](http://gazebosim.org/) 5.0

### tags

- gazebo (```harmishhk/gazebo:gazebo```), default tag ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/gazebo/gazebo/Dockerfile))
- web (```harmishhk/gazebo:web```), gazebo + [gzweb](https://bitbucket.org/osrf/gzweb) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-desktop/Dockerfile))
- ros-web (```harmishhk/gazebo:ros-web```), [ros jade](http://www.ros.org/) + gazebo + [gzweb](https://bitbucket.org/osrf/gzweb) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-desktop/Dockerfile))

### usage

```docker run -i --rm harmishhk/gazebo```

- for setting ports for gzweb, ```docker run -i -p 8080:8080 -p 7681:7681 -t harmishhk/gazebo:web```
- for using host display you can use, ```docker run -i -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -t harmishhk/gazebo```
- easiest way to network multiple containers is using host networking, with ```--net=host``` option

### references
https://github.com/CognitiveRobotics/omnimapper/blob/master/docker/dox/Dockerfile
https://registry.hub.docker.com/u/jorgeluisrmx/gazebo5/
