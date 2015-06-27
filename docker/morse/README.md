### build
```docker build -t harmishhk/morse .```

### run
```docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --privileged harmishhk/morse:ros```

### troubleshoot
you may need to give full access to X, with ```xhost +```
