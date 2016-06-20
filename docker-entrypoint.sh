#!/bin/bash
set -e

if [[ "$1" == *meow* ]]; then
  printf "listen = http://0.0.0.0:4411\nproxy = $PROXY\n" > ~/.meow/rc
fi

exec "$@"
