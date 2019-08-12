##
# Author: Nikolaus Mayer
##

#!/usr/bin/env bash

## Fail if any command fails (use "|| true" if a command is ok to fail)
set -e
## Treat unset variables as error
set -u

docker run                        \
  --rm                            \
  --hostname "${HOSTNAME}"        \
  --env uid=`id -u`               \
  --env gid=`id -g`               \
  --env USER="[Docker]$USER"      \
  -it docker-example;

