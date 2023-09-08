#!/bin/sh
opkg update
opkg install python3 -d ram
export PATH=$PATH:/tmp/usr/bin/
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/tmp/usr/lib/
