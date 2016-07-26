# typescript

[`node`](https://nodejs.org/) plus [`typescript`](http://www.typescriptlang.org/)

# Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/typescript/Dockerfile)

# Usage

```bash
docker run -it --rm                                                 `# remove the container after use` \
  -u "$(id -u):$(id -g)"                                            `# do work as current user` \
  -v $(pwd):/workspace                                              `# share current directory` \
  harmish/typescript tsc -p /workspace --outDir /workspace/build    `# build typescript project`
```

## Linked repositories

- [`node`](https://hub.docker.com/_/node/)
