SSHD based on Alpine for Docker

docker run -itd -p 22:2222 -e SSH_USER=user -e SSH_PW=topsecret -v /path/onHost:/shared am2h/ssh

on remote: e.g. ssh user@server-ip -p 2222
