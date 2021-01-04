# Building mips-linux-binutils on Windows using Cygwin

First, you will need to install the following packages using the Cygwin installer:
- make
- gcc-g++
- bison
- flex
- binutils (Make sure to check the "Src?" checkbox since we're interested in the source code. Once the download is finished, you will find it in /usr/src)

Create destination dir for binutils
```bash
sudo mkdir -p /opt/cross
```
Extract binutils source
```bash
cd /usr/src/binutils-...
tar xjf binutils-....tar.bz2
```

Create and enter build dir
```bash
mkdir build-binutils
cd build-binutils
```

Configure the build
```bash
../binutils-.../configure --target=mips-linux-gnu --prefix=/opt/cross --disable-gprof --disable-gdb --disable-werror
```

Make and install binutils
```bash
make -j
sudo make install
```

Edit your ~/.bashrc to add the new binutils binaries to the system PATH

(You can also edit Windows' system path instead by going to `Edit the system environment variables`>`Environment Variables`)
```bash
echo "export PATH=$PATH:/opt/cross/bin" >> ~/.bash_profile
```

Reload ~/.bash_profile (or just launch a new terminal tab)
```bash
~/.bash_profile
```
