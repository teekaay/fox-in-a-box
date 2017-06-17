#!/bin/sh

# Creates a new role.
# Usage: add-role <role-name>

set -e

ROLE="${1}"
ROLE_DIR="roles/${ROLE}"

if [ -d "${ROLE_DIR}" ]; then
    echo "Role ${ROLE} already exists. Exiting"
    exit 0
fi

echo "Creating new role ${ROLE} in ${ROLE_DIR}"

mkdir -p "${ROLE_DIR}/files"
mkdir -p "${ROLE_DIR}/tasks"
touch "${ROLE_DIR}/tasks/main.yaml"
mkdir -p "${ROLE_DIR}/defaults"
touch "${ROLE_DIR}/defaults/main.yaml"

echo "Done."