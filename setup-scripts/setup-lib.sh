#!/bin/sh

# get sudo if needed
if [ -z "$EUID" ]; then
    EUID=`id -u`
fi
SUDO=
if [ ! $EUID -eq 0 ] ; then
    SUDO=sudo
fi

# default IPs and ports
RIC_SUBNET2=10.0.3.0/24
RIC_IP2=10.0.3.1
E2TERM_IP2=10.0.3.10
E2TERM_SCTP_PORT2=46422
E2MGR_IP2=10.0.3.11
DBAAS_IP2=10.0.3.12
DBAAS_PORT2=6379
E2RTMANSIM_IP2=10.0.3.15
XAPP_IP2=10.0.3.24  # generic xApp IP

