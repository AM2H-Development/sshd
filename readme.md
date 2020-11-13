SSHD based on OpenSSH / Alpine for Docker

run with SSH user "user" and pw "topsecret":
* docker run -itd -p 2222:22 -e SSH_USER=user -e SSH_PW=topsecret -v /path/onHost:/shared am2h/sshd
* on remote: e.g. ssh user@server-ip -p 2222

or for default user and randomly generated password:
* docker run -itd -p 2222:22 -v /path/onHost:/shared am2h/sshd
* on remote: e.g. ssh ssh@server-ip -p 2222

build 20/13/11
