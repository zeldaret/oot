# The Legend of Zelda: Ocarina of Time

```diff
- WARNING! -

The ROM this repository builds cannot be 'shifted', primarily due to some hardcoded pointers which have yet
to be dumped. Thus this repository is currently in an experimental and research phase and cannot yet be used
traditionally as a source code base for general changes.
```

This is a WIP decompilation of The Legend of Zelda: Ocarina of Time.
The purpose of the project is to recreate a source code base for the game from scratch, using information found inside the game along with static and/or dynamic analysis.
The only build currently supported is Master Quest (Debug), but other versions are planned to be supported.

It builds the following ROM:

* zelda_ocarina_mq_dbg.z64 `md5: f0b7f35375f9cc8ca1b2d59d78e35405`

**Note:** This repository does not include any of the assets necessary to build the ROM.
A prior copy of the game is required to extract the needed assets.

Website: <https://zelda64.dev/>

Discord: <https://discord.zelda64.dev>

## Installation

### Windows

For Windows 10, install WSL and a distribution by following this
[Windows Subsystem for Linux Installation Guide](https://docs.microsoft.com/en-us/windows/wsl/install-win10).
We recommend using Debian or Ubuntu 18.04 Linux distributions.

For older versions of Windows, install a Linux VM or refer to [Docker](#Docker) instructions.

### macOS

For macOS, install a Linux VM or refer to [Docker](#Docker) instructions.

### Linux (Native or under WSL / VM)

#### 1. Install build dependencies

The build process has the following package requirements:

* git
* build-essential
* binutils-mips-linux-gnu
* python3

Under Debian / Ubuntu (which we recommend using), you can install them with the following commands:

```bash
sudo apt-get update
sudo apt-get install git build-essential binutils-mips-linux-gnu python3
```

#### 2. Download qemu-irix

Download qemu-irix.zip from the Releases section in the repository. Extract it to a folder of your choosing.

#### 3. Set environment variables

Open up your .bashrc file (~/.bashrc), scroll to the bottom, and add the following, replacing the paths as necessary:

```text
export QEMU_IRIX="path/to/your/qemu-irix"
export MIPS_BINUTILS_PREFIX=mips-linux-gnu-
```

Save and close/reopen your terminal window.

#### 4. Clone the repository

Clone `https://github.com/zeldaret/oot.git` where you wish to have the project, with a command such as:

```bash
git clone https://github.com/zeldaret/oot.git
```

#### 5. Prepare a base ROM

Copy over your copy of the Master Quest (Debug) ROM inside the root of this new project directory.
Rename the file to "baserom_original.z64" or "baserom_original.n64", depending on the original extension.

#### 6. Setup the ROM and build process

Setup and extract everything from your ROM with the following command:

```bash
make setup
```

This will generate a new ROM called "baserom.z64" that will have the overdump removed and the header patched.
It will also extract the individual assets from the ROM.

#### 7. Build the ROM

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

### Docker

#### 1. Setup requirements

To use Docker, you'll need either Docker Desktop or Docker Toolbox installed and setup based on your system.

You'll also need to prepare a local version of the project with a copied base ROM (see Step 4 and 5 of the Linux instructions).

#### 2. Create the docker image

From inside your local project, run the following command:

```bash
docker build . -t oot
```

#### 3. Start the container

##### Option A: With docker run

To start the container, you can mount your local filesystem into the docker container and run an interactive bash session.

```bash
docker run -it --rm --mount type=bind,source="$(pwd)",destination=/oot oot /bin/bash
```

##### Option B (only for macOS): With docker-sync

Prerequisite for this option: Install docker-sync with `gem install docker-sync`

To start docker-sync and the development container, use `docker-sync-stack start`

After a lot of waiting, you'll see something like "Attaching to oot_oot_1".
This means the container is ready.

Then it's time to log into the container to begin working.
Note that this will be done in another tab while you leave the docker-sync tab going.

To get the container id, use `docker container ls` and use the ID from the container with image oot:latest in the following command:

`docker exec-it <CONTAINER-ID> /bin/bash` You're in.

> Note: When done working, type Ctrl+c on the docker-sync tab to close the container and docker-sync.

#### 4. Setup and Build the ROM

Once inside the container, you can follow Step 6 and 7 of the Linux instructions to setup and build the ROM, or run any other command you need.

## Contributing

All contributions are welcome. This is a group effort, and even small contributions can make a difference.
Some tasks also don't require much knowledge to get started.

Most discussions happen on our [Discord Server](https://discord.zelda64.dev), where you are welcome to ask if you need help getting started, or if you have any questions regarding this project and other decompilation projects.
