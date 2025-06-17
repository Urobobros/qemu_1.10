#!/bin/sh
set -e

# Simple helper script to install SDL2 development files on Debian/Ubuntu
# systems. Useful when building QEMU from a fresh environment without
# persistent package caches.

if dpkg -s libsdl2-dev >/dev/null 2>&1; then
    echo "libsdl2-dev already installed"
else
    echo "Installing libsdl2-dev via apt-get..."
    sudo apt-get update
    sudo apt-get install -y libsdl2-dev
fi
