#!/bin/sh

set -eu

ARCH=$(uname -m)

echo "Installing package and its dependencies..."
echo "---------------------------------------------------------------"
make-aur-package gapless
pacman -Syu --noconfirm \
            gst-plugins-bad \
            gst-plugins-base \
            gst-plugins-good \
            gst-plugins-ugly \
            pipewire-jack

echo "Installing debloated packages..."
echo "---------------------------------------------------------------"
get-debloated-pkgs --add-common --prefer-nano
