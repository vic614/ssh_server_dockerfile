FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
ENV USER_NAME=user
RUN useradd -ms /bin/bash $USER_NAME
USER $USER_NAME
COPY authorized_keys /home/$USER_NAME/.ssh/authorized_keys
USER root
RUN chown $USER_NAME:$USER_NAME /home/$USER_NAME/.ssh/authorized_keys
EXPOSE 22
CMD    ["/usr/sbin/sshd", "-D"]
