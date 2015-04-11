#!/bin/bash

# sets the specified hostname  in /etc/hosts in an idempotent way

HOST_NAME=$1
IP_ADDRESS=$2

DONEFILE=/var/ansible-${HOST_NAME}

# make sure we are idempotent
if [ -f "${DONEFILE}" ]; then
    exit 0
fi

echo ${IP_ADDRESS} ${HOST_NAME} | tee --append /etc/hosts 

# signal a successful provision
touch ${DONEFILE}
