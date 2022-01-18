# Building on Arch Linux

The build process has the following package requirements:

* git
* base-devel
* python
* python-colorama
* libpng
* cross-mips-elf-binutils (AUR)

The necessary packages can be installed with the following commands

```bash
sudo pacman -Sy --needed git base-devel python python-colorama libpng

git clone https://aur.archlinux.org/cross-mips-elf-binutils.git && cd cross-mips-elf-binutils
makepkg -si
```

You should now be able to continue from [step 2](../README.md#2-clone-the-repository) of the Linux (Debian/Ubuntu) instructions.
