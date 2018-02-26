# haskell

[`haskell`](https://www.haskell.org/) [`stack`](https://docs.haskellstack.org/en/stable/README/) plus some useful haskell-packages

# Supported tags and respective `Dockerfile` links

- [`stack`, (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/haskell/stack/Dockerfile)
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

- [`ubuntu`](https://hub.docker.com/_/ubuntu/)
