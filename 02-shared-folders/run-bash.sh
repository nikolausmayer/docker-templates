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
  --volume "${PWD}:/host:rw"      \
  --hostname "${HOSTNAME}"        \
  -it docker-example /bin/bash;

