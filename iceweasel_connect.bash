#!/bin/bash
THISUN=$(echo $USER)
THISUID=$(id -u)
THISGID=$(id -g)
THISHOME="/home/${THISUN}"
THISLABEL='openconnect-ssh-firefox'
THISVERSION='1.0_blf_2017-09-07'

docker exec \
  -it  \
  --user="${THISUID}" \
  -e DISPLAY=$DISPLAY  \
   ${THISUN}_vpn_ssh_iceweasel \
  iceweasel


