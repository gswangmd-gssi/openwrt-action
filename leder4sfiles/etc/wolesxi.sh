#!/bin/sh

#Power for ESXI
ping -c 3 10.10.10.1 > /dev/null
ret=$?
if [ $ret -ne 0 ] ; then
 /usr/bin/etherwake -i "eth1" "98:F2:B3:EE:4F:98"
fi
