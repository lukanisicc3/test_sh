#!/bin/sh

opkg update
opkg install python3 -d ram

opkg install openssh-sftp-server

if grep -xqFe "export PATH=$PATH:/tmp/usr/bin/" /etc/shit; then
    echo -e "Exists"
else
    echo -e "Not Exists"
    echo "export PATH=$PATH:/tmp/usr/bin/" >> /etc/shinit
fi

if grep -xqFe "echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/usr/lib/" >> /etc/shinit" /etc/shit; then
    echo -e "Exists"
else
    echo -e "Not Exists"
    echo "echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/usr/lib/" >> /etc/shinit" >> /etc/shinit
fi
