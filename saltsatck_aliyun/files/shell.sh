#!/bin/bash
ntpdate time-a.nist.gov
hwclock --systohc
crontab -e  << EOF
0 0 * * * /usr/sbin/ntpdate time-a.nist.gov
EOF

#mount -a

#file end
