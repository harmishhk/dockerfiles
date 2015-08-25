# ros

```harmishhk/ros:indigo-desktop``` + dependencies required by [spencer](http://spencer.eu/)

### tags

- hydro (```harmishhk/spencer:hydro```)
- indigo (```harmishhk/spencer:indigo```), default tag
- jade (```harmishhk/spencer:jade```)

### usage

```docker run -it --rm harmishhk/spencer:indigo```

- share local ROS workspace with ```-v``` option, e.g.  ```-v $HOME/ros/spencer_ws:/ros/spencer_ws```
- easiest way to network multiple containers is using host networking, with ```--net=host``` option
