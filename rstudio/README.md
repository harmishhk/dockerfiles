# rstudio

enabling root-login in [`rocker:hadleyverse`](https://hub.docker.com/r/rocker/hadleyverse/)

#  Supported tags and respective `Dockerfile` links

- [`hadleyverse`, `latest`(*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/rstudio/Dockerfile)

# Usage

```console
docker run -d                   `# run container in background` \
    -p 8787:8787                `# share default port for rserver` \
    -v $HOME/.rstudio:/.rstudio `# share user-rstudio directory` \
    -v $(pwd):/root             `# share current directory as working directory` \
    harmish/rstudio:latest            `# run rstudio-server`
```

- This image enables login as root:root with rstudio. It is helpful if you are using user namespace mapping with docker daemon, and mapping host user to root inside the container.

## Linked repositories

- [`rocker/hadleyverse`](https://hub.docker.com/r/rocker/hadleyverse/)
