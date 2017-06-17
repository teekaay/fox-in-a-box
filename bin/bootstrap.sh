#!/usr/bin/env bash

PLAYBOOK='laptop.yaml'
HOST='127.0.0.1'

if [ ! -f "${PLAYBOOK}" ]; then
    echo "Playbook ${PLAYBOOK} not found. Exiting"
    exit 1
fi

ansible-playbook -i "${HOST}" "${PLAYBOOK}" -vvv $@

cat after-install.txt
