SHELL:=/bin/bash

default: docker-example

.PHONY: docker-example

docker-example:
	docker build                                  \
	       -f Dockerfile                          \
	       -t $@                                  \
	       --build-arg uid=$$UID                  \
	       --build-arg gid=$$GROUPS               \
	       --build-arg username=$$USER            \
	       .

