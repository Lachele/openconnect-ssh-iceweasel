#!/bin/bash
THISUN=$(echo $USER)
THISUID=$(id -u)
THISGID=$(id -g)
THISHOME="/home/${THISUN}"
THISLABEL='openconnect-ssh-firefox'
THISVERSION='1.0_blf_2017-09-07'


docker run \
   --privileged \
   -it --rm \
    --name ${THISUN}_vpn_ssh_iceweasel \
    --security-opt apparmor:unconfined \
    -v ${THISHOME}:${THISHOME}  \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    ${THISLABEL}:${THISVERSION} \
    /bin/bash -c "\
         groupadd -og ${THISGID} ${THISUN} \
      && adduser --home ${THISHOME} \
                 --shell /bin/bash \
		 --uid ${THISUID} \
		 --gid ${THISGID} \
		 --disabled-password \
		 --system ${THISUN} \
      && /bin/bash "

