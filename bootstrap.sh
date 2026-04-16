#!/bin/bash

dnf -y install epel-release
cat dnf -y update
dnf -y install git ansible-core
dnf -y sssd-common oddjob oddjob-mkhomedir sssd-ad adcli samba-common-tools krb-workstation

realm -v discover admin.uowm.gr
realm -v -U noc join admin.uowm.gr

sudo ansible-pull -U https://github.com/uowmnoc/workstation-config.git
