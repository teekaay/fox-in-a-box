#!/usr/bin/env bash

# This script installs ansible and its dependencies.

set -e

sudo apt-get install -y \
    software-properties-common \
    python-apt

sudo apt-get install -y ansible
