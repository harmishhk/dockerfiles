## some help

* docker engine options can be specified in `/etc/default/docker` by setting `DOCKER_OPTS` variable.
* to change docker root directory (which in turn changes location of images) use `--graph` argument, e.g. `DOCKER_OPTS="--graph=/disired/location/docker"`.
* when using remote private registry, you need to add `--insecure-registry` to docker engine arguments, e.g. `DOCKER_OPTS="--insecure-registry server.address:5000"`.
