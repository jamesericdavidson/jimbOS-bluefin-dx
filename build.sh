#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
#rpm-ostree install screen

# this would install a package from rpmfusion
# rpm-ostree install vlc

#### Example for enabling a System Unit File

#systemctl enable podman.socket

# Add (in order):
# The Papirus icon theme
# A userspace driver for Corsair gaming mice
# Debian Almquist SHell (for POSIX compliance and speed)
rpm-ostree install papirus-icon-theme ckb-next dash
systemctl enable ckb-next-daemon.service

# Remove (in order):
# The nano text editor (install nano via homebrew, or to containers as needed)
rpm-ostree uninstall default-editor nano-default-editor nano
