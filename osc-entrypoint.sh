#!/bin/bash

set -e

# Satisfactory cannot be NAT'd on its standard port: the external and internal
# port numbers must match. OSC assigns that number and passes it as UDP_PORT.
if [[ -n "$UDP_PORT" ]]; then
    export SERVERGAMEPORT="$UDP_PORT"
fi

exec /init.sh "$@"
