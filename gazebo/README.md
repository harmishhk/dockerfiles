# gazebo

[ubuntu 14.04](http://www.ubuntu.com/) + [gazebo](http://gazebosim.org/) 5.0

### tags

- gazebo (```harmish/gazebo:gazebo```), default tag ([Dockerfile](https://github.com/harmishhk/dockerfiles/blob/master/gazebo/gazebo/Dockerfile))
- web (```harmish/gazebo:web```), gazebo + [gzweb](https://bitbucket.org/osrf/gzweb) ([Dockerfile](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-desktop/Dockerfile))
- ros-web (```harmish/gazebo:ros-web```), [ros jade](http://www.ros.org/) + gazebo + [gzweb](https://bitbucket.org/osrf/gzweb) ([Dockerfile](https://github.com/harmishhk/dockerfiles/blob/master/ros/jade-desktop/Dockerfile))

### usage

```docker run -i --rm harmish/gazebo```

- for setting ports for gzweb, ```docker run -i -p 8080:8080 -p 7681:7681 -t harmish/gazebo:web```
- for using host display you can use, ```docker run -i -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -t harmish/gazebo```
- easiest way to network multiple containers is using host networking, with ```--net=host``` option

### references
https://github.com/CognitiveRobotics/omnimapper/blob/master/docker/dox/Dockerfile
https://registry.hub.docker.com/u/jorgeluisrmx/gazebo5/
