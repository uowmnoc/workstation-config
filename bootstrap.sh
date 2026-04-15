#!/bin/bash
# bootstrap.sh

# 1. Update package manager and install prerequisites (Debian/Ubuntu example)
dnf -y install epel-release
dnf -y update
dnf -y install git ansible-core

sudo ansible-pull -U https://github.com/uowmnoc/workstation-config.git
