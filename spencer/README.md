# SPENCER

[`ubuntu:14.04`](https://hub.docker.com/_/ubuntu/) plus [ros-indigo-desktop-full](https://hub.docker.com/r/harmish/ros/) plus dependencies required by [SPENCER](http://spencer.eu)

#  Supported tags

- `hydro`, with [`ubuntu:12.04`](https://hub.docker.com/_/ubuntu/)
- `indigo`, `latest`
- `jade`

# Usage

```console
docker run --rm -it \
  -u "$(id -u):$(id -g)" \
  -v $HOME/.ros:/.ros \
  -v $HOME/.config/catkin:/.config/catkin:ro \
  -v $HOME/ros-workspace:$HOME/ros-workspace \
  -w $(pwd) \
  harmish/spencer catkin build
```
