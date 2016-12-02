#!/bin/bash
set -e

if [[ "$1" == *MEOW ]]; then
  if [ -n "$CONFIG_URL" ]; then
    curl "$CONFIG_URL" --output $HOME/.meow/rc
  elif [ -n "$PROXY" ]; then
    # easy config
    printf "listen = http://0.0.0.0:4411\njudgeByIP = true\nproxy = $PROXY\n" > $HOME/.meow/rc
  else
    echo "No proxy settings found in environment variables. You may need to set CONFIG_URL or PROXY."
  fi
fi

exec "$@"
