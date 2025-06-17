# qemu_1.10

This repository contains QEMU 0.10 with additional patches. Building the
project requires some development libraries which may not be installed on a
fresh system. The `scripts/install_sdl12.sh` helper can install the SDL 1.2
headers used by the build.

## Quick start

```sh
./scripts/install_sdl12.sh     # installs libsdl1.2-dev if needed
cd qemu-0.10.0
./configure --target-list=i386-softmmu [--enable-cdaudio]
make -j$(nproc)
```

Passing `--enable-cdaudio` compiles the experimental CD audio support. Omit
the option to build without it.

The resulting `i386-softmmu/qemu` binary can then be run using your preferred
arguments.

## Quick disk test

After building, you can create a small qcow2 disk image and boot QEMU with it:

```sh
./scripts/run_test_disk.sh               # creates 'disk.img' and boots it
```

The script uses `qemu-img` to create a 64MB image if it does not exist and
passes it as the `-hda` drive.
