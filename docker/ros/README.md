# ros

[ubuntu 14.04](http://www.ubuntu.com/) + [ROS](http://www.ros.org/) jade

### tags

- jade-base (```harmishhk/ros:jade-base```), default tag ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-base/Dockerfile))
- jade-robot (```harmishhk/ros:jade-robot```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-robot/Dockerfile))
- jade-navigation (```harmishhk/ros:jade-navigation```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-navigation/Dockerfile))
- jade-desktop-full (```harmishhk/ros:jade-desktop-full```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-desktop-full/Dockerfile))
- indigo-base (```harmishhk/ros:indigo-base```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/indigo-base/Dockerfile))
- indigo-robot (```harmishhk/ros:indigo-robot```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/indigo-robot/Dockerfile))
- indigo-navigation (```harmishhk/ros:indigo-navigation```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/indigo-navigation/Dockerfile))
- indigo-desktop-full (```harmishhk/ros:indigo-desktop-full```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/indigo-desktop-full/Dockerfile))
- hydro-base (```harmishhk/ros:hydro-base```), based on ubuntu 12.04 ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/hydro-base/Dockerfile))
- hydro-robot (```harmishhk/ros:hydro-robot```), based on ubuntu 12.04 ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/hydro-robot/Dockerfile))
- hydro-navigation (```harmishhk/ros:hydro-navigation```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/hydro-navigation/Dockerfile))
- hydro-desktop-full (```harmishhk/ros:hydro-desktop-full```), based on ubuntu 12.04 ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/hydro-desktop-full/Dockerfile))

### usage

```docker run -it harmishhk/ros```

- share local ROS workspace with ```-v``` option, e.g.  ```-v $HOME/ros:/ros```
- easiest way to network multiple containers is using host networking, with ```--net=host``` option

### repository links

- [ubuntu](https://registry.hub.docker.com/_/ubuntu/)
