# Building mips-linux-binutils on Windows using Cygwin

First, you will need to install the following packages using the Cygwin installer:
- make
- gcc-g++
- bison
- flex
- texinfo
- binutils (Make sure to check the "Src?" checkbox since we're interested in the source code. Once the download is finished, you will find it in `/usr/src/`)

Create destination dir for binutils
```bash
sudo mkdir -p /opt/cross
```
Extract binutils source
```bash
cd /usr/src/binutils-[...].src/
tar xjf binutils-[...].tar.bz2
```

Create and enter build dir
```bash
mkdir build-binutils
cd build-binutils
```

Configure the build
```bash
../binutils-gdb/configure --target=mips-linux-gnu --prefix=/opt/cross --disable-gprof --disable-nls --disable-werror --disable-gdb --disable-libdecnumber --disable-readline --disable-sim
```

Make and install binutils
```bash
make -j
sudo make install -j
```

Add the new binutils binaries to your system PATH:

You can do that by adding `PATH=$PATH:/opt/cross/bin` to `~/.bashrc` and then reloading `~/.bashrc`.

Alternatively you can edit the `Path` variable in `Edit the system environment variables`>`Environment Variables` (in which case you will need to relaunch your terminal).
