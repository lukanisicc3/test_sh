#!/bin/sh

opkg update
opkg install python3 -d ram

opkg install openssh-sftp-server

if grep -xqFe "export PATH=$PATH:/tmp/usr/bin/" /etc/shinit; then
    echo -e "Exists"
else
    echo -e "Not Exists"
    echo "export PATH=$PATH:/tmp/usr/bin/" >> /etc/shinit
fi

sleep 5

if grep -xqFe "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/usr/lib/" /etc/shinit; then
    echo -e "Exists"
else
    echo -e "Not Exists"
    echo "export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/usr/lib/" >> /etc/shinit
fi
