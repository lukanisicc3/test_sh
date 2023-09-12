#!/bin/sh

opkg update
opkg install python3 -d ram

opkg install openssh-sftp-server
