# ros

[ubuntu 14.04](http://www.ubuntu.com/) + [ROS](http://www.ros.org/) jade

### tags

- jade-base (```harmishhk/ros:jade-base```), default tag
- jade-desktop (```harmishhk/ros:jade-desktop```)
- jade-desktop-full (```harmishhk/ros:jade-desktop-full```)
- indigo-base (```harmishhk/ros:indigo-base```)
- indigo-desktop (```harmishhk/ros:indigo-desktop```)
- indigo-desktop-full (```harmishhk/ros:indigo-desktop-full```)
- hydro-base (```harmishhk/ros:hydro-base```), based on ubuntu 12.04
- hydro-desktop (```harmishhk/ros:hydro-desktop```), based on ubuntu 12.04
- hydro-desktop-full (```harmishhk/ros:hydro-desktop-full```), based on ubuntu 12.04

### usage

```docker run -it harmishhk/ros```

- share local ROS workspace with ```-v``` option, e.g  ```-v $HOME/ros:/root/ros```
- easiest way to network multiple containers is using host networking, with ```--net=host``` option
