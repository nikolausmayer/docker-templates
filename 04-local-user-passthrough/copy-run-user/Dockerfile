FROM ubuntu:16.04

RUN apt-get update &&                          \
    apt-get install -y --no-install-recommends \
        vim                                    \
        sudo

## Switch to non-root user 
ENV uid=999
ENV gid=999
ENV USER=genericuser
RUN groupadd --gid $gid $USER                          && \
    useradd --uid $uid --gid $gid --create-home $USER  && \
    chmod o+rwX -R /home/${USER}

## This command enables SUDO rights (without password) for the new user
RUN usermod --append --groups sudo $USER && \
    echo "%sudo ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER ${USER}
ENV HOME=/home/${USER}
WORKDIR ${HOME}

