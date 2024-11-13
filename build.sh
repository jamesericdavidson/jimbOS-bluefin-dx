#! /usr/bin/env bash

set -ouex pipefail

rpm-ostree install papirus-icon-theme ckb-next dash v4l-utils
systemctl enable ckb-next-daemon.service

rpm-ostree uninstall default-editor nano-default-editor nano
