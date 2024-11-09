# Build

```bash
docker build -t exiftool .
```

# Run

```bash
docker run -it --rm -v /photos:/photos exiftool bash
```

# Usage

```bash
exiftool -all= -tagsfromfile @ -FILE -EXIF -IPTC -Composite -overwrite_original filename.jpg
```

# Script for Automator

```zsh
#!/bin/zsh

# Iterate over each DIR passed by Automator
for DIR in "$@"; do
    if [[ -d "$DIR" ]]; then
        /usr/local/bin/docker run --rm -v "$DIR":/photos exiftool sh -c 'exiftool -all= -tagsfromfile @ -FILE -EXIF -IPTC -Composite -overwrite_original /photos/*.jpg'
    else
        echo "$DIR is not a valid directory. Skipping."
    fi
done
```
