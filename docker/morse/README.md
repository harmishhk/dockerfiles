# morse

[ubuntu 14.04](http://www.ubuntu.com/) + [morse](https://www.openrobots.org/wiki/morse) simulator (v 1.3) + [ROS](http://www.ros.org/)

### tags

- morse (```harmishhk/morse:morse```), default tag ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/morse/morse/Dockerfile))
- ros (```harmishhk/morse:ros```), with ros jade ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/morse/ros/Dockerfile))
- ros-pr2 (```harmishhk/morse:ros-pr2```), with ros indigo and [pr2 robot](http://wiki.ros.org/Robots/PR2) packages ([Dockerfile](https://github.com/harmishhk/boxes/blob/master/docker/morse/ros-pr2/Dockerfile))

### usage

```docker run -it --rm harmishhk/morse:morse check```

- by default morse will run in [*headless*](https://sympa.laas.fr/sympa/arc/morse-users/2013-10/msg00105.html) mode, to disable use use environment variable ```-e "HEADLESS=false"```
- for running with screen you may need to add ```-e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix```

### repository links

- [ubuntu](https://registry.hub.docker.com/_/ubuntu/)
