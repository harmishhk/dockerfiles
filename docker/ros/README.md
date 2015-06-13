# ros

[ubuntu 14.04](http://www.ubuntu.com/) + [ROS](http://www.ros.org/) jade

### tags

- jade-base (```harmishhk/ros:jade-base```), default tag ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-base/Dockerfile))
- jade-desktop (```harmishhk/ros:jade-desktop```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-desktop/Dockerfile))
- jade-desktop-full (```harmishhk/ros:jade-desktop-full```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/jade-desktop-full/Dockerfile))
- indigo-base (```harmishhk/ros:indigo-base```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/indigo-base/Dockerfile))
- indigo-desktop (```harmishhk/ros:indigo-desktop```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/indigo-desktop/Dockerfile))
- indigo-desktop-full (```harmishhk/ros:indigo-desktop-full```) ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/indigo-desktop-full/Dockerfile))
- hydro-base (```harmishhk/ros:hydro-base```), based on ubuntu 12.04 ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/hydro-base/Dockerfile))
- hydro-desktop (```harmishhk/ros:hydro-desktop```), based on ubuntu 12.04 ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/hydro-desktop/Dockerfile))
- hydro-desktop-full (```harmishhk/ros:hydro-desktop-full```), based on ubuntu 12.04 ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/ros/hydro-desktop-full/Dockerfile))

### usage

```docker run -it harmishhk/ros```

- share local ROS workspace with ```-v``` option, e.g  ```-v $HOME/ros:/root/ros```
- easiest way to network multiple containers is using host networking, with ```--net=host``` option
