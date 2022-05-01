# Building with Cygwin

If you want to use Cygwin, you will need to:


## 1. Install Cygwin (and required packages)

* Download and install [Cygwin](https://cygwin.com).

Run the installer and follow the steps to install a cygwin terminal.

After the "choose a download site" step, a window will pop up which will allow you to select packages.
Unlike a normal linux distribution, you must install packages from this interface within the setup program.
To install a package you can change View from "Pending" to "Full".
Then you can enter a package name to search. After finding the package you want, change the "Skip" drop down
to the version you want to install.

Use this interface to select the latest version for all of the following packages:
* make
* gcc-g++
* bison
* flex
* texinfo
* git
* libiconv
* dos2unix
* python3
* libpng-devel
* binutils (Make sure to check the "Src?" checkbox since we're interested in the source code)

## 2. Build mips-linux-binutils on Windows using Cygwin
For the following instructions, wherever you see `binutils-[...]`, the [...] represents the version number.
You can use tab auto-complete to fill this in.

Create destination dir for binutils
```bash
mkdir -p /opt/cross
```

Extract binutils source
```bash
cd /usr/src/binutils-[...].src/
tar -xf binutils-[...].tar.xz
```

Create and enter build dir
```bash
mkdir build-binutils
cd build-binutils
```

Configure the build
```bash
../binutils-[...]/configure --target=mips-linux-gnu --prefix=/opt/cross --disable-gprof --disable-nls --disable-werror --disable-gdb --disable-libdecnumber --disable-readline --disable-sim
```

Make and install binutils
```bash
make -j
make install -j
```

Add the new binutils binaries to your system PATH:
- Go to your home directory `cd`
- Open windows explorer in your current location `explorer.exe .`
- Open the `.bashrc` file in a text editor
- Scroll to the bottom and add `PATH=$PATH:/opt/cross/bin` to a new line and save the file
- Run `source .bashrc` or close and reopen cygwin

## 3. Continue with Linux instructions

You should be able to continue from step [step 2](../README.md#2-clone-the-repository) of the Linux instructions.

**N.B.** Before building anything, you will need to run the following commands to fix line endings:

```bash
dos2unix fixle.sh
./fixle.sh
```
