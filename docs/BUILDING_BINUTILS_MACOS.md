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
curl -O https://ftp.gnu.org/gnu/binutils/binutils-2.46.0.tar.xz
tar xjf binutils-2.46.0.tar.xz
```

Create and enter build dir
```bash
mkdir build-binutils
cd build-binutils
```

Configure the build
```bash
../binutils-2.46.0/configure --target=mips-linux-gnu --prefix=/opt/cross --with-system-zlib --disable-gprof --disable-gdb --disable-werror
```

Make and install binutils
```bash
make -j$(nproc)
sudo make install
```

Edit your ~/.bash_profile to add the new binutils binaries to the system PATH
```bash
echo 'export PATH="$PATH:/opt/cross/bin"' >> ~/.bash_profile
```

Reload ~/.bash_profile (or just launch a new terminal tab)
```bash
source ~/.bash_profile
```

## Building GCC (optional)

If you'd like to compile with GCC instead of IDO (e.g. for modding), you can build it from source similarly to how we built binutils:

Install dependences
```bash
brew install gcc@15 gmp isl libmpc mpfr
```

Create and enter local working dir
```bash
mkdir ~/gcc-tmp
cd ~/gcc-tmp
```

Get and extract gcc source
```bash
curl -O https://ftp.gnu.org/gnu/gcc/gcc-15.2.0/gcc-15.2.0.tar.xz
tar xvf gcc-15.2.0.tar.xz
```

Create and enter a build directory
```bash
mkdir build-gcc
cd build-gcc
```

Configure the build
```bash
CC=gcc-15 CXX=g++-15 ../gcc-15.2.0/configure --target=mips-linux-gnu --prefix=/opt/cross --disable-nls --enable-languages=c --with-gmp=$(brew --prefix)/opt/gmp --with-mpfr=$(brew --prefix)/opt/mpfr --with-mpc=$(brew --prefix)/opt/libmpc --with-isl=$(brew --prefix)/opt/isl
```

Make and install gcc
```bash
CC=gcc-15 CXX=g++-15 make all-gcc -j$(nproc)
sudo make install-gcc
```

If this worked, you can now delete the temporary directory `~/gcc-tmp`.
