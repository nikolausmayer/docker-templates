##
# Author: Nikolaus Mayer
##

#!/usr/bin/env bash

## Fail if any command fails (use "|| true" if a command is ok to fail)
set -e
## Treat unset variables as error
set -u

## Setup X authority such that the container knows how to do graphical stuff
XSOCK="/tmp/.X11-unix";
XAUTH=`tempfile -s .docker.xauth`;
xauth nlist "${DISPLAY}"          \
  | sed -e 's/^..../ffff/'        \
  | xauth -f "${XAUTH}" nmerge -;

docker run                        \
  --rm                            \
  --volume "${XSOCK}:${XSOCK}:rw" \
  --volume "${XAUTH}:${XAUTH}:rw" \
  --env "XAUTHORITY=${XAUTH}"     \
  --env DISPLAY                   \
  --hostname "${HOSTNAME}"        \
  -it docker-example /bin/bash;

