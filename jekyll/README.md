# jekyll

[`ruby`](https://hub.docker.com/_/ruby/) plus [node](https://nodejs.org/)-0.12.9 plus [jekyll](http://jekyllrb.com/)

#  Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/harmish/dockerfiles/blob/master/jekyll/Dockerfile)

# Usage

```console
docker run --rm -t              `# remove container after use` \
    -p 4000:4000                `# publish default jekyll port` \
    --name jekyll               `# name the container` \
    -v $(pwd):$(pwd)            `# mount current directory` \
    -w $(pwd)                   `# start workspaces at current directory` \
    harmish/jekyll jekyll $@    `# execute jekyll with given arguments`
```

## Linked repositories

- [`ruby`](https://hub.docker.com/_/ruby/)
