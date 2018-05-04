FROM ubuntu:16.04

RUN apt-get update &&                          \
    apt-get install -y --no-install-recommends \
        vim                                    \
        sudo

## Switch to non-root user 
ARG uid
ARG gid
ARG username
ENV uid=${uid}
ENV gid=${gid}
ENV USER=${username}
RUN groupadd -g $gid $USER &&                                         \
    mkdir -p /home/$USER &&                                           \
    echo "${USER}:x:${uid}:${gid}:${USER},,,:/home/${USER}:/bin/bash" \
         >> /etc/passwd &&                                            \
    echo "${USER}:x:${uid}:"                                          \
         >> /etc/group &&                                             \
    echo "${USER} ALL=(ALL) NOPASSWD: ALL"                            \
         > /etc/sudoers.d/${USER} &&                                  \
    chmod 0440 /etc/sudoers.d/${USER} &&                              \
    chown ${uid}:${gid} -R /home/${USER}

USER ${USER}
ENV HOME=/home/${USER}

WORKDIR ${HOME}


## Get config files
COPY bashrc ${HOME}/.bashrc
RUN sudo chown ${uid}:${gid} ${HOME}/.bashrc

## This RUN command will load the .bashrc that was just installed
RUN /bin/bash --login -c  \
    "echo hello world"


