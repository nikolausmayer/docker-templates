SHELL:=/bin/bash

## DBus within the container needs a "machine id" to work properly
MACHINEID?=$(shell if test -f /etc/machine-id; then            \
                     cat /etc/machine-id;                      \
                   elif test -f /var/lib/dbus/machine-id; then \
                     at /var/lib/dbus/machine-id;              \
                   fi)

default: docker-example

.PHONY: docker-example

docker-example:
	docker build                                  \
	       -f Dockerfile                          \
	       -t $@                                  \
	       --build-arg machine_id=$(MACHINEID)    \
	       .

