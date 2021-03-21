#!/bin/bash
export SSHPASS=!QAZ2wsx
for ip in `cat /home/hosts.txt`; do
    sshpass -e ssh-copy-id -o "StrictHostKeyChecking no" -i ~/.ssh/id_rsa.pub $ip
done