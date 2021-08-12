# The Legend of Zelda: Ocarina of Time

[![Build Status][jenkins-badge]][jenkins] [![Decompilation Progress][progress-badge]][progress] [![Contributors][contributors-badge]][contributors] [![Discord Channel][discord-badge]][discord]

[jenkins]: https://jenkins.deco.mp/job/OOT/job/master
[jenkins-badge]: https://img.shields.io/jenkins/build?jobUrl=https%3A%2F%2Fjenkins.deco.mp%2Fjob%2FOOT%2Fjob%2Fmaster

[progress]: https://zelda64.dev/progress.html
[progress-badge]: https://img.shields.io/endpoint?url=https://zelda64.dev/reports/progress_shield.json

[contributors]: https://github.com/zeldaret/oot/graphs/contributors
[contributors-badge]: https://img.shields.io/github/contributors/zeldaret/oot

[discord]: https://discord.zelda64.dev
[discord-badge]: https://img.shields.io/discord/688807550715560050?color=%237289DA&logo=discord&logoColor=%23FFFFFF

```diff
- WARNING! -

This repository is a work in progress, and while it can be used to make certain changes, it's still
constantly evolving. If you use it for modding purposes in its current state, please be aware that
the codebase can drastically change at any time. Also note that some parts of the ROM may not be
'shiftable' yet, so modifying them could be difficult at this point.
```

This is a WIP decompilation of The Legend of Zelda: Ocarina of Time. **It is not producing a PC port.** The purpose of the project is to recreate a source code base for the game from scratch, using information found inside the game along with static and/or dynamic analysis. For more information you can get in touch with the team on our [Discord server](https://discord.zelda64.dev).

The only build currently supported is Master Quest (Debug), but other versions are planned to be supported.

It builds the following ROM:

* zelda_ocarina_mq_dbg.z64 `md5: f0b7f35375f9cc8ca1b2d59d78e35405`

**Note: This repository does not include any of the assets necessary to build the ROM. A prior copy of the game is required to extract the needed assets.**

**Website:** <https://zelda64.dev>

**Discord:** <https://discord.zelda64.dev>

## Installation

### Windows

For Windows 10, install WSL and a distribution by following this
[Windows Subsystem for Linux Installation Guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
We recommend using Debian or Ubuntu 18.04 Linux distributions.

For older versions of Windows, install a Linux VM or refer to either [Cygwin](#Cygwin) or [Docker](#Docker) instructions.

### macOS

For macOS, use homebrew to install the following dependencies:

* coreutils
* make
* python3
* md5sha1sum
* libpng

You can install them with the following commands:

```bash
brew update
brew install coreutils make python3 md5sha1sum libpng
```

You'll also need to [build and install mips-linux-binutils](docs/BUILDING_BINUTILS_MACOS.md).

Going forward in this guide, please use `gmake` whenever you encounter a `make` command.
The `make` that comes with MacOS behaves differently than GNU make and is incompatible with this project.

You should now be able to continue from [step 2](#2-clone-the-repository) of the Linux instructions.

### Linux (Native or under WSL / VM)

#### 1. Install build dependencies

The build process has the following package requirements:

* git
* build-essential
* binutils-mips-linux-gnu
* python3
* libpng-dev

Under Debian / Ubuntu (which we recommend using), you can install them with the following commands:

```bash
sudo apt-get update
sudo apt-get install git build-essential binutils-mips-linux-gnu python3 libpng-dev
```

#### 2. Clone the repository

Clone `https://github.com/zeldaret/oot.git` where you wish to have the project, with a command such as:

```bash
git clone https://github.com/zeldaret/oot.git
```

#### 3. Prepare a base ROM

Copy over your copy of the Master Quest (Debug) ROM inside the root of this new project directory.
Rename the file to "baserom_original.z64", "baserom_original.n64" or "baserom_original.v64", depending on the original extension.

#### 4. Setup the ROM and build process

Setup and extract everything from your ROM with the following command:

```bash
make setup
```

This will generate a new ROM called "baserom.z64" that will have the overdump removed and the header patched.
It will also extract the individual assets from the ROM.

#### 5. Build the ROM

Run make to build the ROM.
Make sure your path to the project is not too long, otherwise this process may error.

```bash
make
```

If all goes well, a new ROM called "zelda_ocarina_mq_debug.z64" should be built and the following text should be printed:

```bash
zelda_ocarina_mq_dbg.z64: OK
```

If you instead see the following:

```bash
zelda_ocarina_mq_dbg.z64: FAILED
md5sum: WARNING: 1 computed checksum did NOT match
```

This means that the built ROM isn't the same as the base one, so something went wrong or some part of the code doesn't match.

**NOTE:** to speed up the build, you can either:
* pass `-jN` to `make setup` and `make`, where N is the number of threads to use in the build. The generally-accepted wisdom is to use the number of virtual cores your computer has.
* pass `-j` to `make setup` and `make`, to use as many threads as possible, but beware that this can use too much memory on lower-end systems.

Both of these have the disadvantage that the ordering of the terminal output is scrambled, so for debugging it is best to stick to one thread (i.e. not pass `-j` or `-jN`).

### Cygwin

If you want to use Cygwin, you will need to:

* Download and install [Git Bash](https://git-scm.com/download/win).
* Download and install [Cygwin](https://cygwin.com).
* [Build and install mips-linux-binutils](docs/BUILDING_BINUTILS_CYGWIN.md).

Once mips-linux-binutils is installed you will need to install the following packages using Cygwin's installer:

* libiconv
* dos2unix
* python3
* libpng-devel

Then you can continue from step [step 2](#2-clone-the-repository) of the Linux instructions.

Note that, before building anything, you will need to run the following commands to fix line endings:

```bash
dos2unix fixle.sh
./fixle.sh
```

### Docker

#### 1. Setup requirements

To use Docker, you'll need either Docker Desktop or Docker Toolbox installed and setup based on your system.

You'll also need to prepare a local version of the project with a copied base ROM (see steps [2](#2-clone-the-repository) and [3](#3-prepare-a-base-rom) of the Linux instructions).

#### 2. Create the docker image

From inside your local project, run the following command:

```bash
docker build . -t oot
```

#### 3. Start the container

To start the container, you can mount your local filesystem into the docker container and run an interactive bash session.

```bash
docker run -it --rm --mount type=bind,source="$(pwd)",destination=/oot oot /bin/bash
```

#### 4. Setup and Build the ROM

Once inside the container, you can follow steps [4](#4-setup-the-rom-and-build-process) and [5](#5-build-the-rom) of the Linux instructions to setup and build the ROM, or run any other command you need.

## Contributing

All contributions are welcome. This is a group effort, and even small contributions can make a difference.
Some tasks also don't require much knowledge to get started.

Most discussions happen on our [Discord Server](https://discord.zelda64.dev), where you are welcome to ask if you need help getting started, or if you have any questions regarding this project and other decompilation projects.
