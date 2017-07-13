# hugo

[`hugo`](https://gohugo.io) installed on [`alpine`](https://www.alpinelinux.org/)

# Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/hugo/Dockerfile)

# Usage

```console
docker run --rm -it         `# remove container after use` \
    -v $(pwd):$(pwd)        `# mount current directory` \
    -w $(pwd)               `# start workspaces at current directory` \
    harmish/hugo hugo       `# execute hugo command`
```

## Linked repositories

- [`alpine`](https://hub.docker.com/_/alpine/)
