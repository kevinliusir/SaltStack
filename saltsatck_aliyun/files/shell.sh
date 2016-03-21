#!/bin/bash
ntpdate time-a.nist.gov
hwclock --systohc
crontab -u root -e  << EOF
0 0 * * * /usr/sbin/ntpdate time-a.nist.gov
EOF


#disk=/dev/sdb
disk=/dev/vdb
fdisk $disk << EOF
n
p
1
1

w
EOF
mkfs.ext4 ${disk}1
echo '/dev/vdb1  /mnt ext4    defaults    0  0' >> /etc/fstab
mount -a

#file end
