#!/bin/bash

# return if cannot execute
set -e

# build when asked
if [[ $1 == "build" ]]
then
    shift
    source /build_rosweb.sh
fi

# executre given command
exec "$@"
