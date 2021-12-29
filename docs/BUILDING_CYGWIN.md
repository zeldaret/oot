# Building with Cygwin

**N.B.** These have not been tested recently, you may find the requirements have changed a bit.

If you want to use Cygwin, you will need to:


## 1. Install Git Bash and Cygwin

* Download and install [Git Bash](https://git-scm.com/download/win).
* Download and install [Cygwin](https://cygwin.com).


## 2. Build mips-linux-binutils on Windows using Cygwin

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


## 3. Install required Cygwin packages

Once mips-linux-binutils is installed you will need to install the following packages using Cygwin's installer:

* libiconv
* dos2unix
* python3
* libpng-devel


## 4. Install required Python packages

To install the Python dependencies simply run in a terminal:

```bash
python3 -m pip install colorama
```


## 5. Continue with Linux instructions

You should be able to continue from step [step 2](../README.md#2-clone-the-repository) of the Linux instructions.

**N.B.** Before building anything, you will need to run the following commands to fix line endings:

```bash
dos2unix fixle.sh
./fixle.sh
```
