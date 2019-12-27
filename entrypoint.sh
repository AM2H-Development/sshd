#!/bin/sh
set -e

echo "SSH to container with USER=${SSH_USER}, PW=${SSH_PW}"

adduser $SSH_USER -D --home /shared
echo "${SSH_USER}:${SSH_PW}" | chpasswd
# echo "${SSH_USER}:${SSH_PW}" > pw.txt

/usr/sbin/sshd -De
