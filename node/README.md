# node

[`node`](https://nodejs.org) installed on [`ubuntu:16.04`](https://hub.docker.com/_/ubuntu/)

# Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/node/Dockerfile)

# Usage

```console
docker run --rm -it         `# remove container after use` \
    -v $(pwd):$(pwd)        `# mount current directory` \
    -w $(pwd)               `# start workspaces at current directory` \
    harmish/node node       `# execute node command`
```

## Linked repositories

- [`ubuntu`](https://hub.docker.com/_/ubuntu/)

## Note

This image do not create a user `node` as in official [`node`](https://hub.docker.com/_/node/) repository, which may be unnecessary when using docker with user namespace remapping.
