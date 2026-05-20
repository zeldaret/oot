# fado
*Fairy-Assisted (relocations for) Decomplied Overlays*
<!-- Nice backronym... -->

Contains
- **Fairy** a library for reading relocatable MIPS ELF object files (big-endian, suitable for Nintendo 64 games)
- **Fado** a program for generating the `.ovl`/relocation section for Zelda64 overlay files
- **Mido** an automatic dependency file generator

Compatible with both IDO and GCC (although [see below](N_B)). Both ordinary MIPS REL sections and RELA sections are now supported.

Output format is the standard "Zelda64" .ovl section, with the relocs divided by section, as used by
- *The Legend of Zelda: Ocarina of Time* (all Nintendo 64/Gamecube/iQue releases)
- *The Legend of Zelda: Majora's Mask* (all Nintendo 64/Gamecube releases)

In theory it will also work for other Nintendo 64 games that use this system, such as *Yoshi's Story*, but has yet to be tested with these.


## Explanation

The overlay relocation sections used by Zelda64 is described [here](z64_relocation_section_format.md). Fado will produce a `.ovl` section compatible with this format, although as noted there, some compilers need persuasion to produce compatible objects.


## How to use

Compile by running `make`.

A standalone invocation of Fado would look something like

```sh
./fado.elf z_en_hs2.o -n ovl_En_Hs2 -o ovl_En_Hs2_reloc.s
```
This takes as input the compiled object file from the C file (e.g. [this one](https://github.com/zeldaret/oot/blob/eadc477187888e1ae078d021b4a00b1366f0c9a4/src/overlays/actors/ovl_En_Hs2/z_en_hs2.c)), the name of the overlay (`ovl_En_Hs2`) and will output an assembly file `ovl_En_Hs2_reloc.s` containing the relocation section. An example output is included in the repo [here](ovl_En_Hs_reloc.s). Fado will print information from the object file to assist with debugging, by splitting relocs by section, and for each, printing the type, offset, and associated symbol (or section if static):

```mips
# TEXT RELOCS
.word 0x45000084 # R_MIPS_HI16 0x000084 .data
.word 0x4600008C # R_MIPS_LO16 0x00008C .data
.word 0x450000B4 # R_MIPS_HI16 0x0000B4 .rodata
.word 0x460000BC # R_MIPS_LO16 0x0000BC .rodata
.word 0x450000C0 # R_MIPS_HI16 0x0000C0 func_80A6F1A4
.word 0x460000C4 # R_MIPS_LO16 0x0000C4 func_80A6F1A4
```

If invoking in a makefile, you will probably want to generate these from a predefined filelist, and with the appropriate dependencies. [The Ocarina of Time decomp repository](http://github.com/zeldaret/oot) contains an example of how to do this using a supplementary program to parse the `spec` format.

More information can be obtained by running

```sh
./fado.elf --help
```

which contains information on the various options, such as automatic dependency file generation, etc.


## N.B.

- Fado expects the linker script to output symbols for the section sizes, and for them to be declared separately, in the format

```
_SEGMENTNAMESegmentSECTIONSize
```

e.g.

```
_ovl_En_Hs2SegmentTextSize
```

etc.

- By default Fado expects sections to be 0x10-aligned, as is usual for IDO. Some versions of GCC like to align sections to smaller widths, which Fado will handle appropriately, but the linker script must also address this, and at least the default settings seem unable to size the sections correctly due ot placing `fill`s in the wrong places. For now it is recommended to manually align sections to 0x10 if the compiler does not automatically.
  - The experimental flag `--alignment`/`-a` can be passed to Fado, and it will use the alignment declared by each section in the elf file instead of padding them to 0x10 bytes, It should be noted this option has not been fully tested because currently we don't have any linker script tool that can properly address the incorrect placing of `fill`s. Fado must be rebuilt passing `EXPERIMENTAL=1` to be able to use this flag.

- To prevent GCC producing non-compliant HI/LOs, you must pass *both* of the following compiler flags: `-mno-explicit-relocs -mno-split-addresses`. See [here](z64_relocation_section_format.md#hilo) for more details.

- It is recommended, though not strictly required, that `-fno-merge-constants` is used for GCC, to avoid unpredictable section sizes, and comply with the Zelda64 relocation format's expectation of at most one rodata section. See [here](z64_relocation_section_format.md#rodata) for more details.
