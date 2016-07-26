#!/bin/bash

# return if cannot execute
set -e

# build when asked
if [[ $1 == "build" ]]
then
    shift
    source /build_roswebtools.sh "$@"
else
    # otherwise executre given command
    exec "$@"
fi
