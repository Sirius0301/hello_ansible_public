#/bin/bash
ssh-keygen -f /root/.ssh/id_rsa -P ''
NET=10.0.1
export SSHPASS=!QAZ2wsx
for IP in {1..300};do
    sshpass -e ssh-copy-id $NET.$IP
done