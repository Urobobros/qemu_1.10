#!/bin/sh
set -e

# Optional: set QUIET=1 to suppress command output

# Simple helper to create a qcow2 disk image and boot QEMU with it.
# Usage: ./scripts/run_test_disk.sh [image] [size]
# Default image name is 'disk.img' and size is 64M.
IMG=${1:-disk.img}
SIZE=${2:-64M}

# Create disk image if it doesn't already exist
if [ ! -f "$IMG" ]; then
    [ "$QUIET" = "1" ] || echo "Creating $IMG of size $SIZE"
    if [ "$QUIET" = "1" ]; then
        qemu-img create -f qcow2 "$IMG" "$SIZE" >/dev/null 2>&1
    else
        qemu-img create -f qcow2 "$IMG" "$SIZE"
    fi
fi

cd qemu-0.10.0
if [ "$QUIET" = "1" ]; then
    exec ./i386-softmmu/qemu -L ./pc-bios -hda "../$IMG" -m 64 >/dev/null 2>&1
else
    exec ./i386-softmmu/qemu -L ./pc-bios -hda "../$IMG" -m 64
fi
