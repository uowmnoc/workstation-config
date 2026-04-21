#!/bin/bash

dnf -y install epel-release
cat dnf -y update

dnf config-manager --set-enabled crb

dnf -y install cinnamon cinnamon-calendar-server cinnamon-control-center \
cinnamon-control-center-filesystem cinnamon-desktop cinnamon-menus \
cinnamon-screensaver cinnamon-session cinnamon-settings-daemon cinnamon-themes \
cinnamon-translations slick-greeter-cinnamon xorg-x11* lightdm-settings gnome-terminal

systemctl enable lightdm
systemctl disable gdm

dnf -y install git ansible-core
dnf -y sssd-common oddjob oddjob-mkhomedir sssd-ad adcli samba-common-tools krb-workstation

realm -v discover admin.uowm.gr
realm -v -U noc join admin.uowm.gr

sudo ansible-pull -U https://github.com/uowmnoc/workstation-config.git
