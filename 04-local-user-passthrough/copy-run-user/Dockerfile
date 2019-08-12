FROM ubuntu

RUN apt-get update &&                          \
    apt-get install -y --no-install-recommends \
        sudo

ENV SCRIPT_BEGIN="\
groupadd --gid \$gid \$USER; \n\
useradd --uid \$uid --gid \$gid --create-home \$USER; \n\
cp /root/.bashrc /home/\$USER; \n\
chmod o+r /home/\$USER/.bashrc; \n"

ENV SCRIPT_SUDO="\
usermod --append --groups sudo \$USER; \n\
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers; \n"

ENV SCRIPT_END="\
cd /home/\$USER; \n\
sudo -H -u \$USER /bin/bash;"

RUN echo "$SCRIPT_BEGIN" >  /makeuser.sh  && \
    echo "$SCRIPT_SUDO"  >> /makeuser.sh  && \
    echo "$SCRIPT_END"   >> /makeuser.sh

ENTRYPOINT ["/bin/bash", "/makeuser.sh"]

