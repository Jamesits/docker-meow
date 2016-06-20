#!/bin/bash
set -e

if [[ "$1" == *MEOW ]]; then
  printf "listen = http://0.0.0.0:4411\nproxy = $PROXY\n" > ~/.meow/rc
fi

exec "$@"
