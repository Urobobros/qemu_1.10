# qemu_1.10

This repository contains QEMU 0.10 with additional patches. Building the
project requires some development libraries which may not be installed on a
fresh system. The `scripts/install_sdl12.sh` helper can install the SDL 1.2
headers used by the build.

## Quick start

```sh
./scripts/install_sdl12.sh     # installs libsdl1.2-dev if needed
cd qemu-0.10.0
./configure --target-list=i386-softmmu
make -j$(nproc)
```

The resulting `i386-softmmu/qemu` binary can then be run using your preferred
arguments.
