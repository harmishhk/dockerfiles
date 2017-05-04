# haskell

[`haskell`](https://hub.docker.com/_/haskell/) plus some useful [haskell](https://www.haskell.org/) packages

# Supported tags and respective `Dockerfile` links

- [`tools`, (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/haskell/tools/Dockerfile)
- [`diagrams`, `latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/haskell/diagrams/Dockerfile)

# Usage

```console
docker run --rm -it                 `# remove container after use` \
    -v $(pwd -P):$(pwd -P)          `# mount current directory` \
    -w $(pwd -P)                    `# start workspaces at current directory` \
    harmish/haskell:diagrams        `# start ghci`
```

## Linked repositories

- [`haskell`](https://hub.docker.com/_/haskell/)
