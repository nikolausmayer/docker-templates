SHELL:=/bin/bash

default: docker-example

.PHONY: docker-example

docker-example:
	docker build                                  \
	       -f Dockerfile                          \
	       -t $@                                  \
	       .

