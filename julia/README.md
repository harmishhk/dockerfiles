# julia

[`julia`](https://hub.docker.com/_/julia/) plus some useful [julia](http://julialang.org/) packages

# Supported tags and respective `Dockerfile` links

- [`julia`, `latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/julia/julia/Dockerfile)

# Usage

```console
docker run --rm -it                                 `# remove container after use` \
    -v $HOME/.julia_history:/root/.julia_history    `# share julia_history` \
    -v $HOME/.julia:/root/.julia                    `# share julia packages` \
    -v $(pwd):$(pwd)                                `# mount current directory` \
    -w $(pwd)                                       `# start workspaces at current directory` \
    harmish/julia:latest julia $@                   `# execute julia with given arguments`
```

## Linked repositories

- [`julia`](https://hub.docker.com/_/julia/)
