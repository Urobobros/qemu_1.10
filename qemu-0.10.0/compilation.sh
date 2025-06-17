export CFLAGS="-m32 -DDEBUG_CDAUDIO"
export LDFLAGS="-m32 -no-pie"
./configure --target-list=i386-softmmu  --enable-cdaudio
make clean
make
