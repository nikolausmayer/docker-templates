FROM ubuntu:16.04

RUN apt-get update &&                          \
    apt-get install -y --no-install-recommends \
        vim                                    \
        gvim                                   \
        sudo

## Setup language (optional)
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

## Enable X in the container
ARG DISPLAY
ENV XAUTHORITY $XAUTHORITY

## Setup "machine id" used by DBus for proper (complaint-free) X usage
ARG machine_id
ENV machine_id=${machine_id}
RUN sudo chmod o+w /etc/machine-id &&       \
    echo ${machine_id} > /etc/machine-id && \
    sudo chmod o-w /etc/machine-id


