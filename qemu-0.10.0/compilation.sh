export CFLAGS="-m32"
export LDFLAGS="-m32 -no-pie"
./configure --target-list=i386-softmmu  --enable-cdaudio
make clean
make
