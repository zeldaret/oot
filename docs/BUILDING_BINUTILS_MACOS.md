# Building mips-linux-binutils on MacOS

The following instructions are written for MacOS users but should apply to any unix-like system, with maybe some modifications at the end regarding the bash_profile.

Create destination dir for binutils
```bash
sudo mkdir -p /opt/cross
```

Create and enter local working dir
```bash
mkdir ~/binutils-tmp
cd ~/binutils-tmp
```

Get and extract binutils source
```bash
wget https://ftp.gnu.org/gnu/binutils/binutils-2.35.tar.bz2
tar xjf binutils-2.35.tar.bz2
```

Create and enter build dir
```bash
mkdir build-binutils
cd build-binutils
```

Configure the build
```bash
../binutils-2.35/configure --target=mips-linux-gnu --prefix=/opt/cross --disable-gprof --disable-gdb --disable-werror
```

Make and install binutils
```bash
make -j
sudo make install
```

Edit your ~/.bash_profile to add the new binutils binaries to the system PATH
```bash
echo "export PATH=$PATH:/opt/cross/bin" >> ~/.bash_profile
```

Reload ~/.bash_profile (or just launch a new terminal tab)
```bash
source ~/.bash_profile
```
