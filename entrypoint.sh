#!/bin/sh
set -e

if [ "$SSH_PW" = "blank" ]
then 
    echo "No password set, create random one!"
    SSH_PW=$(openssl rand -base64 6) 
fi

echo "SSH to container with USER=${SSH_USER}, PW=${SSH_PW}"

if id "$1" >/dev/null 2>&1;
then
    echo "user exists"
else
    echo "user does not exist"
    adduser $SSH_USER -D --home /shared
    echo "$SSH_USER:$SSH_PW" | chpasswd
    echo "$SSH_USER:$SSH_PW"
fi

/usr/sbin/sshd -De
