# LaTeX

[`ubuntu:16.04`](https://hub.docker.com/_/ubuntu/) plus [TeX Live](https://www.tug.org/texlive/) 2015

#  Supported tags and respective `Dockerfile` links

- [`latest` (*Dockerfile*)](https://github.com/harmishhk/dockerfiles/blob/master/latex/Dockerfile)

# Usage

```console
docker run --rm -it \
  -u "$(id -u):$(id -g)" \
  -v $(pwd):/latex \
  --name latex \
  --net=none \
  harmish/latex latexmk --pdf -outdir=out source.tex
```

## Linked repositories

- [`ubuntu`](https://hub.docker.com/_/ubuntu/)
