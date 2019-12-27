FROM alpine:latest

ENV SSH_USER ssh
ENV SSH_PW blank


RUN apk update \
    && apk add openssh-server openssh-client openssl \
    && ssh-keygen -A \
    && mkdir /shared \
    && chmod 777 /shared

VOLUME /shared

EXPOSE 22

COPY entrypoint.sh /
RUN chmod 555 /entrypoint.sh

ENTRYPOINT [ "/bin/sh",  "/entrypoint.sh" ]
CMD ["--start-sshd"]
