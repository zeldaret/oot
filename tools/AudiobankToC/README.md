# AudiobankToC
Scripts for converting between N64 Audiobank bank files and C code.

Does not contain any Gigaleak code or info; based only on pre-Gigaleak
documentation, decomp, and manual examination of bank file binaries.

Matches on binary -> C -> binary for the following banks in OoT:
1. 0x00 - Master
1. 0x01 - Actor
1. 0x02 - Nature (kankyo)
1. 0x03 - Main Orchestra

Not tested otherwise yet.

# Use

### Audiobank to C

If you do not already have a `YourBank.json` file (some are available in the
`json` folder), you can generate one by running `makedummyjson.py`, given the
number of instruments, drums, and SFX in the bank. You can get this info from
SEQ64 V1.5 or the semi-working Jared Johnson zzrtl scripts. Once you have the
dummy json, edit it in a text editor to set the names of the instruments, drums,
and SFX. This is not strictly needed (the dummy names will work), but it will
make editing much easier.

When the json file is ready, run
```
python3 audiobanktoc.py path/to/YourBank.bin path/to/YourBank.json path/to/YourBank.c
```
This will write the C file and the header (`YourBank.h`) next to the C file.

### C to Audiobank

The Audiobank C file can be compiled back into binary with the appropriate
header and linker script. The provided `Makefile` is a working example of how
to do this. Most of the C flags are not critical, except for `-mabi=32`,
`-fno-toplevel-reorder`, and `-fno-zero-initialized-in-bss`.

You must use `include/audiobank.h` when building, not `include/z64audio.h` from
the decomp. The actual structs are slightly different, plus they have
alignment attributes which are required to match. Because these breaking changes
were needed, I have also changed some of the names to be more accurate. However,
the files which are included from `audiobank.h` are the standard ones from the
decomp.

You must also use `audiobank.ld`, or modify your existing tools for:
- `ENTRY_POINT` of 0
- `.data` as the very first section linked

### Modifications

You may adjust the includes and variable prefixes by editing lines near the top
of audiobanktoc.py.
