# haskell

[`haskell`](https://hub.docker.com/_/haskell/) plus some useful [haskell](https://www.haskell.org/) packages

# Supported tags and respective `Dockerfile` links

- [`diagrams`, `latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/haskell/diagrams/Dockerfile)

# Usage

```console
docker run --rm -it                 `# remove container after use` \
    -v $HOME/.ghci:/root/.ghci      `# share cabal directory` \
    -v $(pwd):$(pwd)                `# mount current directory` \
    -w $(pwd)                       `# start workspaces at current directory` \
    harmish/haskell:diagrams        `# execute julia with given arguments`
```

## Linked repositories

- [`haskell`](https://hub.docker.com/_/haskell/)
