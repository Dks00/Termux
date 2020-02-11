sshd
pkill sshd
pkg upgrade
pkg install openssh
cd /data/data/com.termux/files/usr/etc/ssh/sshd_config
rm sshd_config
PrintMotd no > sshd_config 
PasswordAuthentication no >> sshd_config
PubkeyAcceptedKeyTypes +ssh-dss >> sshd_config
Subsystem sftp /data/data/com.termux/files/usr/libexec/sftp-server >> sshd_config
passwd
cd /data/data/com.termux/files/home/ssh
ssh-keygen -t rsa -b 2048 -f id_rsa
ssh-copy-id -p 8022 -i 10.105.76.190
pkill sshd
sshd
