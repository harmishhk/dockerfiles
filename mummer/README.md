# MuMMER

[ros:indigo-robot](https://hub.docker.com/_/ros/) plus dependencies required by [MuMMER](http://www.mummer-project.eu/)

#  Supported tags

- `indigo`, `latest`

# Usage

Build mummer_ws
```console
docker run --rm -it \
  -u "$(id -u):$(id -g)" \
  -v $HOME/.ros:/.ros \
  -v $HOME/.config/catkin:/.config/catkin \
  -v $HOME/.rviz:/.rivz \
  -v $HOME/ros/mummer_ws:$HOME/ros/mummer_ws \
  -w $(pwd) \
  harmish/mummer:indigo catkin build
```
