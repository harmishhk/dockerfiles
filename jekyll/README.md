# jekyll

[`ruby`](https://hub.docker.com/_/ruby/) plus [node](https://nodejs.org/)-0.12.9 plus [jekyll](http://jekyllrb.com/)

#  Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/harmish/dockerfiles/blob/master/jekyll/Dockerfile)

# Usage

```console
docker run --rm -t \
    --name jekyll \
    -v "$(pwd):$(pwd)" \
    -w "$(pwd)" \
    -p 4000:4000 \
    -u "$(id -u):$(id -g)" \
    harmish/jekyll jekyll build
```

## Linked repositories

- [`ruby`](https://hub.docker.com/_/ruby/)
