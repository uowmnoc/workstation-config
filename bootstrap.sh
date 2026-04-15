#!/bin/bash
# bootstrap.sh

# 1. Update package manager and install prerequisites (Debian/Ubuntu example)
dnf -y update
dnf -y install git ansible epel-release

sudo ansible-pull -U https://github.com/uowmnoc/workstation-config.git
