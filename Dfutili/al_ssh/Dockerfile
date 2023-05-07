FROM alpine
RUN apk update && apk add --no-cache sudo bash openrc openssh
RUN mkdir -p /run/openrc && rc-update add sshd default
RUN adduser --disabled-password regusr && \
sh -c 'echo "regusr:<encoded_password>"' | chpasswd -e > /dev/null 2>&1 && \
sh -c 'echo "regusr ALL=NOPASSWD: ALL"' >> /etc/sudoers
VOLUME ["/home/reguser/solution/entrypoint-init.d","/sys/fs/cgroup"]
USER reguser
WORKDIR /home/reguser
RUN mkdir -p $HOME/solution && sudo chown reguser:reguser $HOME/solution
ADD ./entrypoint.sh /home/reguser/solution/
EXPOSE 22
ENTRYPOINT ["./solution/entrypoint.sh"]
CMD ["/bin/bash"]
