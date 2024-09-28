#! /usr/bin/env dash

set -ouex pipefail

rpm-ostree install papirus-icon-theme ckb-next dash neovim
systemctl enable ckb-next-daemon.service

rpm-ostree uninstall default-editor nano-default-editor nano vim-data vim-minimal vim-filesystem vim-common vim-enhanced
